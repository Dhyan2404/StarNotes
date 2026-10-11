package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtCompatible;
import java.util.Comparator;
import java.util.Iterator;

@snf
@GwtCompatible
/* loaded from: classes6.dex */
public interface svm<T> extends Iterable<T> {
    Comparator<? super T> comparator();

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet, com.sunia.HTREnginev2.svm
    Iterator<T> iterator();
}
