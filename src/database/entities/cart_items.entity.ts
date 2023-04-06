import { Column, Entity, ManyToOne, JoinColumn, PrimaryColumn } from 'typeorm';
import { Carts } from './carts.entity';

@Entity()
export class CartItems {
  @PrimaryColumn('uuid')
  productId: string;

  @Column('uuid')
  cartId: string;

  @Column('int')
  count: number;

  @ManyToOne(() => Carts, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'cart_id', referencedColumnName: 'id' })
  carts: Carts;
}
