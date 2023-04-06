import {
  Column,
  Entity,
  PrimaryGeneratedColumn,
  CreateDateColumn,
  UpdateDateColumn,
  OneToMany,
  JoinColumn,
} from 'typeorm';
import { CartItems } from './cart_items.entity';

export enum Status {
  OPEN = 'OPEN',
  ORDERED = 'ORDERED',
}

@Entity()
export class Carts {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column('uuid')
  user_id: string;

  @CreateDateColumn({ type: 'timestamp without time zone', default: 'NOW()' })
  created_at: Date;

  @UpdateDateColumn({
    type: 'timestamp without time zone',
    onUpdate: 'NOW()',
    nullable: true,
  })
  updated_at: Date;

  @Column({ type: 'enum', enum: Status, default: Status.OPEN })
  status: Status;

  @OneToMany(
    () => CartItems,
    item => item.carts,
    { cascade: true },
  )
  @JoinColumn({ name: 'id', referencedColumnName: 'cartId' })
  items: CartItems[];
}
