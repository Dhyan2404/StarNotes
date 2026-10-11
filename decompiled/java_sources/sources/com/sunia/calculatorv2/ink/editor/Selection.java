package com.sunia.calculatorv2.ink.editor;

import com.sunia.HTREnginev2.C14219p1;
import com.sunia.calculatorv2.ink.model.IElement;
import java.util.List;

/* loaded from: classes10.dex */
public class Selection<T extends IElement> {
    private final T converted;
    private final List<C14219p1> traces;

    public Selection(T t, List<C14219p1> list) {
        this.converted = t;
        this.traces = list;
    }

    public T getConverted() {
        return this.converted;
    }

    public List<C14219p1> getTraces() {
        return this.traces;
    }
}
