package com.onyx.android.sdk.matisse.internal.p030ui.adapter;

import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import com.onyx.android.sdk.matisse.internal.entity.Item;
import com.onyx.android.sdk.matisse.internal.p030ui.PreviewItemFragment;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes7.dex */
public class PreviewPagerAdapter extends FragmentPagerAdapter {

    /* renamed from: j */
    public ArrayList<Item> f42781j;

    /* renamed from: k */
    public InterfaceC7468a f42782k;

    /* renamed from: com.onyx.android.sdk.matisse.internal.ui.adapter.PreviewPagerAdapter$a */
    /* loaded from: classes7.dex */
    public interface InterfaceC7468a {
        /* renamed from: a */
        void m33446a(int i);
    }

    public PreviewPagerAdapter(FragmentManager fragmentManager, InterfaceC7468a interfaceC7468a) {
        super(fragmentManager);
        this.f42781j = new ArrayList<>();
        this.f42782k = interfaceC7468a;
    }

    public void addAll(List<Item> list) {
        this.f42781j.addAll(list);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f42781j.size();
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    public Fragment getItem(int i) {
        return PreviewItemFragment.newInstance(this.f42781j.get(i));
    }

    public Item getMediaItem(int i) {
        return this.f42781j.get(i);
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter, androidx.viewpager.widget.PagerAdapter
    public void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
        super.setPrimaryItem(viewGroup, i, obj);
        InterfaceC7468a interfaceC7468a = this.f42782k;
        if (interfaceC7468a != null) {
            interfaceC7468a.m33446a(i);
        }
    }
}
