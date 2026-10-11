package com.google.android.exoplayer2.p008ui;

import android.R;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.app.AlertDialog;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.p008ui.TrackSelectionDialogBuilder;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.MappingTrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelectionUtil;
import com.google.android.exoplayer2.util.Assertions;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes5.dex */
public final class TrackSelectionDialogBuilder {

    /* renamed from: a */
    public final Context f27830a;

    /* renamed from: b */
    @StyleRes
    public int f27831b;

    /* renamed from: c */
    public final CharSequence f27832c;

    /* renamed from: d */
    public final MappingTrackSelector.MappedTrackInfo f27833d;

    /* renamed from: e */
    public final int f27834e;

    /* renamed from: f */
    public final DialogCallback f27835f;

    /* renamed from: g */
    public boolean f27836g;

    /* renamed from: h */
    public boolean f27837h;

    /* renamed from: i */
    public boolean f27838i;

    /* renamed from: j */
    @Nullable
    public TrackNameProvider f27839j;

    /* renamed from: k */
    public boolean f27840k;

    /* renamed from: l */
    public List<DefaultTrackSelector.SelectionOverride> f27841l;

    /* renamed from: m */
    @Nullable
    public Comparator<Format> f27842m;

    /* loaded from: classes5.dex */
    public interface DialogCallback {
        void onTracksSelected(boolean z, List<DefaultTrackSelector.SelectionOverride> list);
    }

    public TrackSelectionDialogBuilder(Context context, CharSequence charSequence, MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int i, DialogCallback dialogCallback) {
        this.f27830a = context;
        this.f27832c = charSequence;
        this.f27833d = mappedTrackInfo;
        this.f27834e = i;
        this.f27835f = dialogCallback;
        this.f27841l = Collections.emptyList();
    }

    /* renamed from: e */
    public static /* synthetic */ void m21215e(DefaultTrackSelector defaultTrackSelector, DefaultTrackSelector.Parameters parameters, int i, TrackGroupArray trackGroupArray, boolean z, List list) {
        defaultTrackSelector.setParameters(TrackSelectionUtil.updateParametersWithOverride(parameters, i, trackGroupArray, z, list.isEmpty() ? null : (DefaultTrackSelector.SelectionOverride) list.get(0)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ void m21216f(TrackSelectionView trackSelectionView, DialogInterface dialogInterface, int i) {
        this.f27835f.onTracksSelected(trackSelectionView.getIsDisabled(), trackSelectionView.getOverrides());
    }

    public Dialog build() {
        Dialog m21217c = m21217c();
        return m21217c == null ? m21218d() : m21217c;
    }

    @Nullable
    /* renamed from: c */
    public final Dialog m21217c() {
        try {
            Class cls = Integer.TYPE;
            Object newInstance = AlertDialog.Builder.class.getConstructor(Context.class, cls).newInstance(this.f27830a, Integer.valueOf(this.f27831b));
            View inflate = LayoutInflater.from((Context) AlertDialog.Builder.class.getMethod("getContext", new Class[0]).invoke(newInstance, new Object[0])).inflate(C4970R.layout.exo_track_selection_dialog, (ViewGroup) null);
            DialogInterface.OnClickListener m21219g = m21219g(inflate);
            AlertDialog.Builder.class.getMethod("setTitle", CharSequence.class).invoke(newInstance, this.f27832c);
            AlertDialog.Builder.class.getMethod("setView", View.class).invoke(newInstance, inflate);
            AlertDialog.Builder.class.getMethod("setPositiveButton", cls, DialogInterface.OnClickListener.class).invoke(newInstance, Integer.valueOf(R.string.ok), m21219g);
            AlertDialog.Builder.class.getMethod("setNegativeButton", cls, DialogInterface.OnClickListener.class).invoke(newInstance, Integer.valueOf(R.string.cancel), null);
            return (Dialog) AlertDialog.Builder.class.getMethod(BaiduYunConstant.CREATE, new Class[0]).invoke(newInstance, new Object[0]);
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: d */
    public final Dialog m21218d() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.f27830a, this.f27831b);
        View inflate = LayoutInflater.from(builder.getContext()).inflate(C4970R.layout.exo_track_selection_dialog, (ViewGroup) null);
        return builder.setTitle(this.f27832c).setView(inflate).setPositiveButton(R.string.ok, m21219g(inflate)).setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null).create();
    }

    /* renamed from: g */
    public final DialogInterface.OnClickListener m21219g(View view) {
        final TrackSelectionView trackSelectionView = (TrackSelectionView) view.findViewById(C4970R.id.exo_track_selection_view);
        trackSelectionView.setAllowMultipleOverrides(this.f27837h);
        trackSelectionView.setAllowAdaptiveSelections(this.f27836g);
        trackSelectionView.setShowDisableOption(this.f27838i);
        TrackNameProvider trackNameProvider = this.f27839j;
        if (trackNameProvider != null) {
            trackSelectionView.setTrackNameProvider(trackNameProvider);
        }
        trackSelectionView.init(this.f27833d, this.f27834e, this.f27840k, this.f27841l, this.f27842m, null);
        return new DialogInterface.OnClickListener() { // from class: com.sunia.HTREnginev2.zkn
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                TrackSelectionDialogBuilder.this.m21216f(trackSelectionView, dialogInterface, i);
            }
        };
    }

    public TrackSelectionDialogBuilder setAllowAdaptiveSelections(boolean z) {
        this.f27836g = z;
        return this;
    }

    public TrackSelectionDialogBuilder setAllowMultipleOverrides(boolean z) {
        this.f27837h = z;
        return this;
    }

    public TrackSelectionDialogBuilder setIsDisabled(boolean z) {
        this.f27840k = z;
        return this;
    }

    public TrackSelectionDialogBuilder setOverride(@Nullable DefaultTrackSelector.SelectionOverride selectionOverride) {
        return setOverrides(selectionOverride == null ? Collections.emptyList() : Collections.singletonList(selectionOverride));
    }

    public TrackSelectionDialogBuilder setOverrides(List<DefaultTrackSelector.SelectionOverride> list) {
        this.f27841l = list;
        return this;
    }

    public TrackSelectionDialogBuilder setShowDisableOption(boolean z) {
        this.f27838i = z;
        return this;
    }

    public TrackSelectionDialogBuilder setTheme(@StyleRes int i) {
        this.f27831b = i;
        return this;
    }

    public void setTrackFormatComparator(@Nullable Comparator<Format> comparator) {
        this.f27842m = comparator;
    }

    public TrackSelectionDialogBuilder setTrackNameProvider(@Nullable TrackNameProvider trackNameProvider) {
        this.f27839j = trackNameProvider;
        return this;
    }

    public TrackSelectionDialogBuilder(Context context, CharSequence charSequence, final DefaultTrackSelector defaultTrackSelector, final int i) {
        this.f27830a = context;
        this.f27832c = charSequence;
        MappingTrackSelector.MappedTrackInfo mappedTrackInfo = (MappingTrackSelector.MappedTrackInfo) Assertions.checkNotNull(defaultTrackSelector.getCurrentMappedTrackInfo());
        this.f27833d = mappedTrackInfo;
        this.f27834e = i;
        final TrackGroupArray trackGroups = mappedTrackInfo.getTrackGroups(i);
        final DefaultTrackSelector.Parameters parameters = defaultTrackSelector.getParameters();
        this.f27840k = parameters.getRendererDisabled(i);
        DefaultTrackSelector.SelectionOverride selectionOverride = parameters.getSelectionOverride(i, trackGroups);
        this.f27841l = selectionOverride == null ? Collections.emptyList() : Collections.singletonList(selectionOverride);
        this.f27835f = new DialogCallback() { // from class: com.sunia.HTREnginev2.aln
            @Override // com.google.android.exoplayer2.ui.TrackSelectionDialogBuilder.DialogCallback
            public final void onTracksSelected(boolean z, List list) {
                TrackSelectionDialogBuilder.m21215e(DefaultTrackSelector.this, parameters, i, trackGroups, z, list);
            }
        };
    }
}
