package org.apache.commons.math3.genetics;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* loaded from: classes12.dex */
public abstract class ListPopulation implements Population {

    /* renamed from: e */
    public List<Chromosome> f108215e;

    /* renamed from: f */
    public int f108216f;

    public ListPopulation(int i) throws NotPositiveException {
        this(Collections.emptyList(), i);
    }

    @Override // org.apache.commons.math3.genetics.Population
    public void addChromosome(Chromosome chromosome) throws NumberIsTooLargeException {
        if (this.f108215e.size() >= this.f108216f) {
            throw new NumberIsTooLargeException(LocalizedFormats.LIST_OF_CHROMOSOMES_BIGGER_THAN_POPULATION_SIZE, Integer.valueOf(this.f108215e.size()), Integer.valueOf(this.f108216f), false);
        }
        this.f108215e.add(chromosome);
    }

    public void addChromosomes(Collection<Chromosome> collection) throws NumberIsTooLargeException {
        if (this.f108215e.size() + collection.size() > this.f108216f) {
            throw new NumberIsTooLargeException(LocalizedFormats.LIST_OF_CHROMOSOMES_BIGGER_THAN_POPULATION_SIZE, Integer.valueOf(this.f108215e.size()), Integer.valueOf(this.f108216f), false);
        }
        this.f108215e.addAll(collection);
    }

    public List<Chromosome> getChromosomeList() {
        return this.f108215e;
    }

    public List<Chromosome> getChromosomes() {
        return Collections.unmodifiableList(this.f108215e);
    }

    @Override // org.apache.commons.math3.genetics.Population
    public Chromosome getFittestChromosome() {
        Chromosome chromosome = this.f108215e.get(0);
        for (Chromosome chromosome2 : this.f108215e) {
            if (chromosome2.compareTo(chromosome) > 0) {
                chromosome = chromosome2;
            }
        }
        return chromosome;
    }

    @Override // org.apache.commons.math3.genetics.Population
    public int getPopulationLimit() {
        return this.f108216f;
    }

    @Override // org.apache.commons.math3.genetics.Population
    public int getPopulationSize() {
        return this.f108215e.size();
    }

    @Override // java.lang.Iterable
    public Iterator<Chromosome> iterator() {
        return getChromosomes().iterator();
    }

    @Deprecated
    public void setChromosomes(List<Chromosome> list) throws NullArgumentException, NumberIsTooLargeException {
        if (list == null) {
            throw new NullArgumentException();
        }
        if (list.size() > this.f108216f) {
            throw new NumberIsTooLargeException(LocalizedFormats.LIST_OF_CHROMOSOMES_BIGGER_THAN_POPULATION_SIZE, Integer.valueOf(list.size()), Integer.valueOf(this.f108216f), false);
        }
        this.f108215e.clear();
        this.f108215e.addAll(list);
    }

    public void setPopulationLimit(int i) throws NotPositiveException, NumberIsTooSmallException {
        if (i <= 0) {
            throw new NotPositiveException(LocalizedFormats.POPULATION_LIMIT_NOT_POSITIVE, Integer.valueOf(i));
        }
        if (i < this.f108215e.size()) {
            throw new NumberIsTooSmallException(Integer.valueOf(i), Integer.valueOf(this.f108215e.size()), true);
        }
        this.f108216f = i;
    }

    public String toString() {
        return this.f108215e.toString();
    }

    public ListPopulation(List<Chromosome> list, int i) throws NullArgumentException, NotPositiveException, NumberIsTooLargeException {
        if (list == null) {
            throw new NullArgumentException();
        }
        if (i > 0) {
            if (list.size() <= i) {
                this.f108216f = i;
                ArrayList arrayList = new ArrayList(i);
                this.f108215e = arrayList;
                arrayList.addAll(list);
                return;
            }
            throw new NumberIsTooLargeException(LocalizedFormats.LIST_OF_CHROMOSOMES_BIGGER_THAN_POPULATION_SIZE, Integer.valueOf(list.size()), Integer.valueOf(i), false);
        }
        throw new NotPositiveException(LocalizedFormats.POPULATION_LIMIT_NOT_POSITIVE, Integer.valueOf(i));
    }
}
