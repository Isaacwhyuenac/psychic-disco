"""create vote table

Revision ID: 9f08fe864d6b
Revises:
Create Date: 2021-01-24 13:54:15.999254

"""
import random

from alembic import context, op
from sqlalchemy import Column, DateTime, Integer, String, Unicode
# from datetime import datetime
from sqlalchemy.sql import column, table
from sqlalchemy.sql.functions import now

# revision identifiers, used by Alembic.
revision = '9f08fe864d6b'
down_revision = None
branch_labels = None
depends_on = None

table_name = "vote"


def upgrade():
    op.create_table(
        table_name,
        Column('id', Integer, autoincrement=True, primary_key=True),
        Column('vote', Unicode(
            length=255, collation="utf8mb4_unicode_ci"), nullable=False),
        Column('kiosk_id', String(length=255), nullable=False),
        Column('created', DateTime(timezone=True), server_default=now(),)
    )

    # alembic -x data=true upgrade head
    if context.get_x_argument(as_dictionary=True).get('data', None):
        data_upgrades()


def downgrade():
    if context.get_x_argument(as_dictionary=True).get('data', None):
        data_downgrades()

    op.drop_table(
        table_name
    )


def data_upgrades():
    my_table = table(
        table_name,
        # column('id', Integer),
        column('vote', String(length=255)),
        column('kiosk_id', String(length=255)),
    )

    data = []
    persons = ['林林', '薯片', '正氣']

    for person in persons:
        number = random.randint(0, 100)

        data.extend([{'vote': person, 'kiosk_id': '1'}] * number)

    op.bulk_insert(my_table, data)


def data_downgrades():
    op.execute(f'delete from {table_name}')
