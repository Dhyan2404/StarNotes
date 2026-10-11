package org.apache.commons.math3.genetics;

import java.util.Collections;
import java.util.List;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class ElitisticListPopulation extends ListPopulation {

    /* renamed from: g */
    public double f108203g;

    public ElitisticListPopulation(List<Chromosome> list, int i, double d) throws NullArgumentException, NotPositiveException, NumberIsTooLargeException, OutOfRangeException {
        super(list, i);
        this.f108203g = 0.9d;
        setElitismRate(d);
    }

    public double getElitismRate() {
        return this.f108203g;
    }

    @Override // org.apache.commons.math3.genetics.Population
    public Population nextGeneration() {
        ElitisticListPopulation elitisticListPopulation = new ElitisticListPopulation(getPopulationLimit(), getElitismRate());
        List<Chromosome> chromosomeList = getChromosomeList();
        Collections.sort(chromosomeList);
        for (int ceil = (int) FastMath.ceil((1.0d - getElitismRate()) * chromosomeList.size()); ceil < chromosomeList.size(); ceil++) {
            elitisticListPopulation.addChromosome(chromosomeList.get(ceil));
        }
        return elitisticListPopulation;
    }

    public void setElitismRate(double d) throws OutOfRangeException {
        if (d < 0.0d || d > 1.0d) {
            throw new OutOfRangeException(LocalizedFormats.ELITISM_RATE, Double.valueOf(d), 0, 1);
        }
        this.f108203g = d;
    }

    public ElitisticListPopulation(int i, double d) throws NotPositiveException, OutOfRangeException {
        super(i);
        this.f108203g = 0.9d;
        setElitismRate(d);
    }
}
