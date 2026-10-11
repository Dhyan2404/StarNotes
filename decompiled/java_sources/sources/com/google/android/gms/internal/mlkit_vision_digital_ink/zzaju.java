package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
public class zzaju<K, V> extends zzaii<K, V> implements Serializable {
    final transient zzajp<K, ? extends zzajg<V>> map;
    final transient int size;

    public zzaju(zzajp zzajpVar, int i) {
        this.map = zzajpVar;
        this.size = i;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaky
    public /* bridge */ /* synthetic */ Collection zzb(Object obj) {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaky
    public final int zzh() {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaic
    public final /* synthetic */ zzale zzi() {
        return new zzajt(this);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaic
    public final /* synthetic */ Collection zzj() {
        return new zzajs(this);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaic
    public final /* bridge */ /* synthetic */ Iterator zzk() {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaic
    final Map zzn() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaic
    final Set zzo() {
        throw new AssertionError("unreachable");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaky
    @Deprecated
    public final void zzq() {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaky
    public final boolean zzr(@CheckForNull Object obj) {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaic, com.google.android.gms.internal.mlkit_vision_digital_ink.zzaky
    @Deprecated
    public final boolean zzs(Object obj, Object obj2) {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaic, com.google.android.gms.internal.mlkit_vision_digital_ink.zzaky
    public final /* bridge */ /* synthetic */ zzale zzt() {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaic, com.google.android.gms.internal.mlkit_vision_digital_ink.zzaky
    public /* synthetic */ Map zzv() {
        return this.map;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaic, com.google.android.gms.internal.mlkit_vision_digital_ink.zzaky
    public final /* bridge */ /* synthetic */ Set zzw() {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaic, com.google.android.gms.internal.mlkit_vision_digital_ink.zzaky
    public /* bridge */ /* synthetic */ boolean zzx(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return super.zzx(obj, obj2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaic, com.google.android.gms.internal.mlkit_vision_digital_ink.zzaky
    @Deprecated
    public final boolean zzy(@CheckForNull Object obj, @CheckForNull Object obj2) {
        throw null;
    }
}
