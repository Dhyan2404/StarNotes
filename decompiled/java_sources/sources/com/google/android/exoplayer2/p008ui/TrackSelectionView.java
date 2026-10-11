package com.google.android.exoplayer2.p008ui;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.LinearLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.p008ui.TrackSelectionView;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.MappingTrackSelector;
import com.google.android.exoplayer2.util.Assertions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public class TrackSelectionView extends LinearLayout {

    /* renamed from: e */
    public final int f27843e;

    /* renamed from: f */
    public final LayoutInflater f27844f;

    /* renamed from: g */
    public final CheckedTextView f27845g;

    /* renamed from: h */
    public final CheckedTextView f27846h;

    /* renamed from: i */
    public final ViewOnClickListenerC4987b f27847i;

    /* renamed from: j */
    public final SparseArray<DefaultTrackSelector.SelectionOverride> f27848j;

    /* renamed from: k */
    public boolean f27849k;

    /* renamed from: l */
    public boolean f27850l;

    /* renamed from: m */
    public TrackNameProvider f27851m;

    /* renamed from: n */
    public CheckedTextView[][] f27852n;

    /* renamed from: o */
    public MappingTrackSelector.MappedTrackInfo f27853o;

    /* renamed from: p */
    public int f27854p;

    /* renamed from: q */
    public TrackGroupArray f27855q;

    /* renamed from: r */
    public boolean f27856r;

    /* renamed from: s */
    @Nullable
    public Comparator<C4988c> f27857s;

    /* renamed from: t */
    @Nullable
    public TrackSelectionListener f27858t;

    /* loaded from: classes5.dex */
    public interface TrackSelectionListener {
        void onTrackSelectionChanged(boolean z, List<DefaultTrackSelector.SelectionOverride> list);
    }

    /* renamed from: com.google.android.exoplayer2.ui.TrackSelectionView$b */
    /* loaded from: classes5.dex */
    public class ViewOnClickListenerC4987b implements View.OnClickListener {
        public ViewOnClickListenerC4987b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TrackSelectionView.this.m21225f(view);
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.TrackSelectionView$c */
    /* loaded from: classes5.dex */
    public static final class C4988c {

        /* renamed from: a */
        public final int f27860a;

        /* renamed from: b */
        public final int f27861b;

        /* renamed from: c */
        public final Format f27862c;

        public C4988c(int i, int i2, Format format) {
            this.f27860a = i;
            this.f27861b = i2;
            this.f27862c = format;
        }
    }

    public TrackSelectionView(Context context) {
        this(context, null);
    }

    /* renamed from: c */
    public static int[] m21222c(int[] iArr, int i) {
        int[] copyOf = Arrays.copyOf(iArr, iArr.length + 1);
        copyOf[copyOf.length - 1] = i;
        return copyOf;
    }

    /* renamed from: d */
    public static int[] m21223d(int[] iArr, int i) {
        int[] iArr2 = new int[iArr.length - 1];
        int i2 = 0;
        for (int i3 : iArr) {
            if (i3 != i) {
                iArr2[i2] = i3;
                i2++;
            }
        }
        return iArr2;
    }

    /* renamed from: e */
    public static /* synthetic */ int m21224e(Comparator comparator, C4988c c4988c, C4988c c4988c2) {
        return comparator.compare(c4988c.f27862c, c4988c2.f27862c);
    }

    /* renamed from: f */
    public final void m21225f(View view) {
        if (view == this.f27845g) {
            m21227h();
        } else if (view == this.f27846h) {
            m21226g();
        } else {
            m21228i(view);
        }
        m21231l();
        TrackSelectionListener trackSelectionListener = this.f27858t;
        if (trackSelectionListener != null) {
            trackSelectionListener.onTrackSelectionChanged(getIsDisabled(), getOverrides());
        }
    }

    /* renamed from: g */
    public final void m21226g() {
        this.f27856r = false;
        this.f27848j.clear();
    }

    public boolean getIsDisabled() {
        return this.f27856r;
    }

    public List<DefaultTrackSelector.SelectionOverride> getOverrides() {
        ArrayList arrayList = new ArrayList(this.f27848j.size());
        for (int i = 0; i < this.f27848j.size(); i++) {
            arrayList.add(this.f27848j.valueAt(i));
        }
        return arrayList;
    }

    /* renamed from: h */
    public final void m21227h() {
        this.f27856r = true;
        this.f27848j.clear();
    }

    /* renamed from: i */
    public final void m21228i(View view) {
        this.f27856r = false;
        C4988c c4988c = (C4988c) Assertions.checkNotNull(view.getTag());
        int i = c4988c.f27860a;
        int i2 = c4988c.f27861b;
        DefaultTrackSelector.SelectionOverride selectionOverride = this.f27848j.get(i);
        Assertions.checkNotNull(this.f27853o);
        if (selectionOverride == null) {
            if (!this.f27850l && this.f27848j.size() > 0) {
                this.f27848j.clear();
            }
            this.f27848j.put(i, new DefaultTrackSelector.SelectionOverride(i, i2));
            return;
        }
        int i3 = selectionOverride.length;
        int[] iArr = selectionOverride.tracks;
        boolean isChecked = ((CheckedTextView) view).isChecked();
        boolean m21229j = m21229j(i);
        boolean z = m21229j || m21230k();
        if (isChecked && z) {
            if (i3 == 1) {
                this.f27848j.remove(i);
                return;
            } else {
                this.f27848j.put(i, new DefaultTrackSelector.SelectionOverride(i, m21223d(iArr, i2)));
                return;
            }
        }
        if (isChecked) {
            return;
        }
        if (m21229j) {
            this.f27848j.put(i, new DefaultTrackSelector.SelectionOverride(i, m21222c(iArr, i2)));
        } else {
            this.f27848j.put(i, new DefaultTrackSelector.SelectionOverride(i, i2));
        }
    }

    public void init(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int i, boolean z, List<DefaultTrackSelector.SelectionOverride> list, @Nullable final Comparator<Format> comparator, @Nullable TrackSelectionListener trackSelectionListener) {
        this.f27853o = mappedTrackInfo;
        this.f27854p = i;
        this.f27856r = z;
        this.f27857s = comparator == null ? null : new Comparator() { // from class: com.sunia.HTREnginev2.eln
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m21224e;
                m21224e = TrackSelectionView.m21224e(comparator, (TrackSelectionView.C4988c) obj, (TrackSelectionView.C4988c) obj2);
                return m21224e;
            }
        };
        this.f27858t = trackSelectionListener;
        int size = this.f27850l ? list.size() : Math.min(list.size(), 1);
        for (int i2 = 0; i2 < size; i2++) {
            DefaultTrackSelector.SelectionOverride selectionOverride = list.get(i2);
            this.f27848j.put(selectionOverride.groupIndex, selectionOverride);
        }
        m21232m();
    }

    @RequiresNonNull({"mappedTrackInfo"})
    /* renamed from: j */
    public final boolean m21229j(int i) {
        return this.f27849k && this.f27855q.get(i).length > 1 && this.f27853o.getAdaptiveSupport(this.f27854p, i, false) != 0;
    }

    /* renamed from: k */
    public final boolean m21230k() {
        return this.f27850l && this.f27855q.length > 1;
    }

    /* renamed from: l */
    public final void m21231l() {
        this.f27845g.setChecked(this.f27856r);
        this.f27846h.setChecked(!this.f27856r && this.f27848j.size() == 0);
        for (int i = 0; i < this.f27852n.length; i++) {
            DefaultTrackSelector.SelectionOverride selectionOverride = this.f27848j.get(i);
            int i2 = 0;
            while (true) {
                CheckedTextView[] checkedTextViewArr = this.f27852n[i];
                if (i2 < checkedTextViewArr.length) {
                    if (selectionOverride != null) {
                        this.f27852n[i][i2].setChecked(selectionOverride.containsTrack(((C4988c) Assertions.checkNotNull(checkedTextViewArr[i2].getTag())).f27861b));
                    } else {
                        checkedTextViewArr[i2].setChecked(false);
                    }
                    i2++;
                }
            }
        }
    }

    /* renamed from: m */
    public final void m21232m() {
        for (int childCount = getChildCount() - 1; childCount >= 3; childCount--) {
            removeViewAt(childCount);
        }
        if (this.f27853o == null) {
            this.f27845g.setEnabled(false);
            this.f27846h.setEnabled(false);
            return;
        }
        this.f27845g.setEnabled(true);
        this.f27846h.setEnabled(true);
        TrackGroupArray trackGroups = this.f27853o.getTrackGroups(this.f27854p);
        this.f27855q = trackGroups;
        this.f27852n = new CheckedTextView[trackGroups.length];
        boolean m21230k = m21230k();
        int i = 0;
        while (true) {
            TrackGroupArray trackGroupArray = this.f27855q;
            if (i >= trackGroupArray.length) {
                m21231l();
                return;
            }
            TrackGroup trackGroup = trackGroupArray.get(i);
            boolean m21229j = m21229j(i);
            CheckedTextView[][] checkedTextViewArr = this.f27852n;
            int i2 = trackGroup.length;
            checkedTextViewArr[i] = new CheckedTextView[i2];
            C4988c[] c4988cArr = new C4988c[i2];
            for (int i3 = 0; i3 < trackGroup.length; i3++) {
                c4988cArr[i3] = new C4988c(i, i3, trackGroup.getFormat(i3));
            }
            Comparator<C4988c> comparator = this.f27857s;
            if (comparator != null) {
                Arrays.sort(c4988cArr, comparator);
            }
            for (int i4 = 0; i4 < i2; i4++) {
                if (i4 == 0) {
                    addView(this.f27844f.inflate(C4970R.layout.exo_list_divider, (ViewGroup) this, false));
                }
                CheckedTextView checkedTextView = (CheckedTextView) this.f27844f.inflate((m21229j || m21230k) ? R.layout.simple_list_item_multiple_choice : R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
                checkedTextView.setBackgroundResource(this.f27843e);
                checkedTextView.setText(this.f27851m.getTrackName(c4988cArr[i4].f27862c));
                checkedTextView.setTag(c4988cArr[i4]);
                if (this.f27853o.getTrackSupport(this.f27854p, i, i4) == 4) {
                    checkedTextView.setFocusable(true);
                    checkedTextView.setOnClickListener(this.f27847i);
                } else {
                    checkedTextView.setFocusable(false);
                    checkedTextView.setEnabled(false);
                }
                this.f27852n[i][i4] = checkedTextView;
                addView(checkedTextView);
            }
            i++;
        }
    }

    public void setAllowAdaptiveSelections(boolean z) {
        if (this.f27849k != z) {
            this.f27849k = z;
            m21232m();
        }
    }

    public void setAllowMultipleOverrides(boolean z) {
        if (this.f27850l != z) {
            this.f27850l = z;
            if (!z && this.f27848j.size() > 1) {
                for (int size = this.f27848j.size() - 1; size > 0; size--) {
                    this.f27848j.remove(size);
                }
            }
            m21232m();
        }
    }

    public void setShowDisableOption(boolean z) {
        this.f27845g.setVisibility(z ? 0 : 8);
    }

    public void setTrackNameProvider(TrackNameProvider trackNameProvider) {
        this.f27851m = (TrackNameProvider) Assertions.checkNotNull(trackNameProvider);
        m21232m();
    }

    public TrackSelectionView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TrackSelectionView(Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i);
        setOrientation(1);
        this.f27848j = new SparseArray<>();
        setSaveFromParentEnabled(false);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{R.attr.selectableItemBackground});
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        this.f27843e = resourceId;
        obtainStyledAttributes.recycle();
        LayoutInflater from = LayoutInflater.from(context);
        this.f27844f = from;
        ViewOnClickListenerC4987b viewOnClickListenerC4987b = new ViewOnClickListenerC4987b();
        this.f27847i = viewOnClickListenerC4987b;
        this.f27851m = new DefaultTrackNameProvider(getResources());
        this.f27855q = TrackGroupArray.EMPTY;
        CheckedTextView checkedTextView = (CheckedTextView) from.inflate(R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
        this.f27845g = checkedTextView;
        checkedTextView.setBackgroundResource(resourceId);
        checkedTextView.setText(C4970R.string.exo_track_selection_none);
        checkedTextView.setEnabled(false);
        checkedTextView.setFocusable(true);
        checkedTextView.setOnClickListener(viewOnClickListenerC4987b);
        checkedTextView.setVisibility(8);
        addView(checkedTextView);
        addView(from.inflate(C4970R.layout.exo_list_divider, (ViewGroup) this, false));
        CheckedTextView checkedTextView2 = (CheckedTextView) from.inflate(R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
        this.f27846h = checkedTextView2;
        checkedTextView2.setBackgroundResource(resourceId);
        checkedTextView2.setText(C4970R.string.exo_track_selection_auto);
        checkedTextView2.setEnabled(false);
        checkedTextView2.setFocusable(true);
        checkedTextView2.setOnClickListener(viewOnClickListenerC4987b);
        addView(checkedTextView2);
    }
}
