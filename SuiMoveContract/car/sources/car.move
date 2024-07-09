
/// Module: car
module car::car {

    use sui::tx_context::{Self, TxContext};

    fun new(speed: u8, acceleration: u8, handling: u8, ctx: &mut TxContext): Car {
        Car {
            id: object::new(ctx),
            speed,
            acceleration,
            handling
        }
    }

}

