package org.apache.commons.math3.genetics;

import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.JDKRandomGenerator;
import org.apache.commons.math3.random.RandomGenerator;

/* loaded from: classes12.dex */
public class GeneticAlgorithm {

    /* renamed from: g */
    public static RandomGenerator f108208g = new JDKRandomGenerator();

    /* renamed from: a */
    public final CrossoverPolicy f108209a;

    /* renamed from: b */
    public final double f108210b;

    /* renamed from: c */
    public final MutationPolicy f108211c;

    /* renamed from: d */
    public final double f108212d;

    /* renamed from: e */
    public final SelectionPolicy f108213e;

    /* renamed from: f */
    public int f108214f = 0;

    public GeneticAlgorithm(CrossoverPolicy crossoverPolicy, double d, MutationPolicy mutationPolicy, double d2, SelectionPolicy selectionPolicy) throws OutOfRangeException {
        if (d < 0.0d || d > 1.0d) {
            throw new OutOfRangeException(LocalizedFormats.CROSSOVER_RATE, Double.valueOf(d), 0, 1);
        }
        if (d2 < 0.0d || d2 > 1.0d) {
            throw new OutOfRangeException(LocalizedFormats.MUTATION_RATE, Double.valueOf(d2), 0, 1);
        }
        this.f108209a = crossoverPolicy;
        this.f108210b = d;
        this.f108211c = mutationPolicy;
        this.f108212d = d2;
        this.f108213e = selectionPolicy;
    }

    public static synchronized RandomGenerator getRandomGenerator() {
        RandomGenerator randomGenerator;
        synchronized (GeneticAlgorithm.class) {
            randomGenerator = f108208g;
        }
        return randomGenerator;
    }

    public static synchronized void setRandomGenerator(RandomGenerator randomGenerator) {
        synchronized (GeneticAlgorithm.class) {
            f108208g = randomGenerator;
        }
    }

    public Population evolve(Population population, StoppingCondition stoppingCondition) {
        this.f108214f = 0;
        while (!stoppingCondition.isSatisfied(population)) {
            population = nextGeneration(population);
            this.f108214f++;
        }
        return population;
    }

    public CrossoverPolicy getCrossoverPolicy() {
        return this.f108209a;
    }

    public double getCrossoverRate() {
        return this.f108210b;
    }

    public int getGenerationsEvolved() {
        return this.f108214f;
    }

    public MutationPolicy getMutationPolicy() {
        return this.f108211c;
    }

    public double getMutationRate() {
        return this.f108212d;
    }

    public SelectionPolicy getSelectionPolicy() {
        return this.f108213e;
    }

    public Population nextGeneration(Population population) {
        Population nextGeneration = population.nextGeneration();
        RandomGenerator randomGenerator = getRandomGenerator();
        while (nextGeneration.getPopulationSize() < nextGeneration.getPopulationLimit()) {
            ChromosomePair select = getSelectionPolicy().select(population);
            if (randomGenerator.nextDouble() < getCrossoverRate()) {
                select = getCrossoverPolicy().crossover(select.getFirst(), select.getSecond());
            }
            if (randomGenerator.nextDouble() < getMutationRate()) {
                select = new ChromosomePair(getMutationPolicy().mutate(select.getFirst()), getMutationPolicy().mutate(select.getSecond()));
            }
            nextGeneration.addChromosome(select.getFirst());
            if (nextGeneration.getPopulationSize() < nextGeneration.getPopulationLimit()) {
                nextGeneration.addChromosome(select.getSecond());
            }
        }
        return nextGeneration;
    }
}
