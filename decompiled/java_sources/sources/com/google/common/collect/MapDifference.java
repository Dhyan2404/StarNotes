package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.DoNotMock;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.xvk;
import java.util.Map;
import javax.annotation.CheckForNull;

@GwtCompatible
@DoNotMock("Use Maps.difference")
@snf
/* loaded from: classes6.dex */
public interface MapDifference<K, V> {

    @DoNotMock("Use Maps.difference")
    /* loaded from: classes6.dex */
    public interface ValueDifference<V> {
        boolean equals(@CheckForNull Object obj);

        int hashCode();

        @xvk
        V leftValue();

        @xvk
        V rightValue();
    }

    boolean areEqual();

    Map<K, ValueDifference<V>> entriesDiffering();

    Map<K, V> entriesInCommon();

    Map<K, V> entriesOnlyOnLeft();

    Map<K, V> entriesOnlyOnRight();

    boolean equals(@CheckForNull Object obj);

    int hashCode();
}
