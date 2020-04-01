package main;

import java.util.stream.DoubleStream;

import renderer.DensityRenderer;
import renderer.DoubleSampler;

public class Main {
	
	public static void main(String[] args) {
		// DoubleStream.generate(new DoubleSampler(0,0.001)).takeWhile(x -> x < 10).map(x -> DensityRenderer.normalDistribution(5, 0.7, x)).forEach(System.out::println);
		DensityRenderer.renderND("../UncertaintyTest/test.nds", "../presentation/test.out", 0, 0.5, 50);
	}

}
