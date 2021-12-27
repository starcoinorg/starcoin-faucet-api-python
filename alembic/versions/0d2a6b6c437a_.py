"""empty message

Revision ID: 0d2a6b6c437a
Revises: d757fdf185eb
Create Date: 2021-12-27 22:36:28.350812

"""
from alembic import op
import sqlalchemy as sa
from sqlalchemy.dialects import mysql

# revision identifiers, used by Alembic.
revision = '0d2a6b6c437a'
down_revision = 'd757fdf185eb'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_column('faucet', 'retry')
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('faucet', sa.Column('retry', mysql.SMALLINT(), autoincrement=False, nullable=True))
    # ### end Alembic commands ###
