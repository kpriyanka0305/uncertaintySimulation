package renderer;

import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.stream.DoubleStream;
import java.util.stream.Stream;

public class DensityRenderer {
	static public double normalDistribution(double m, double s, double x) {
		return 1 / (s * Math.sqrt(2 * Math.PI)) * Math.exp(-0.5 * Math.pow((x - m / 2), 2));
	}

	static public void renderND(String infileName, String outfileName, double start, double increment, double stop) {
		try (Stream<String> stream = Files.lines(Paths.get(infileName))) {
			FileWriter outFile = new FileWriter(outfileName);
			stream.map(DensityRenderer::parseLineND)
					.forEach(args -> DensityRenderer.renderLineND(args, outFile, start, increment, stop));
			outFile.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	static public List<Double> parseLineND(String input) {
		Scanner s = new Scanner(input);
		List<Double> result = new ArrayList<Double>(3);
		result.add(s.nextDouble());
		result.add(s.nextDouble());
		result.add(s.nextDouble());
		s.close();
		return result;
	}

	static public void renderLineND(List<Double> args, FileWriter outFile, double start, double increment,
			double stop) {
		try {
//			outFile.append("\"" + args.get(0) + "\"\n");
			double v = 0;
			for (double sample = start; sample < stop; sample += increment) {
				v = normalDistribution(args.get(1), args.get(2), sample);
				outFile.append(args.get(0) + " " + sample + " " + v + "\n");
			}
			outFile.append("\n");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
