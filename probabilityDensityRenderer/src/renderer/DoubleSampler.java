package renderer;

import java.util.function.DoubleSupplier;

public class DoubleSampler implements DoubleSupplier {
	private final double increment;
	private double current;

	public DoubleSampler(double start, double increment) {
		this.increment = increment;
		this.current = start;
	}

	@Override
	public double getAsDouble() {
		double result = current;
		current += increment;
		return result;
	}
}
