package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Predicate;
import com.google.common.collect.Multimap;
import java.util.Map;

@snf
@GwtCompatible
/* loaded from: classes6.dex */
public interface hmg<K, V> extends Multimap<K, V> {
    /* renamed from: a */
    Multimap<K, V> mo26995a();

    /* renamed from: c */
    Predicate<? super Map.Entry<K, V>> mo26996c();
}
