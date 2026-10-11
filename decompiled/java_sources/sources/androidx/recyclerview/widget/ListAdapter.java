package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.AsyncDifferConfig;
import androidx.recyclerview.widget.AsyncListDiffer;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class ListAdapter<T, VH extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<VH> {

    /* renamed from: d */
    public final AsyncListDiffer<T> f9464d;

    /* renamed from: e */
    public final AsyncListDiffer.ListListener<T> f9465e;

    /* renamed from: androidx.recyclerview.widget.ListAdapter$a */
    /* loaded from: classes3.dex */
    public class C1341a implements AsyncListDiffer.ListListener<T> {
        public C1341a() {
        }

        @Override // androidx.recyclerview.widget.AsyncListDiffer.ListListener
        public void onCurrentListChanged(@NonNull List<T> list, @NonNull List<T> list2) {
            ListAdapter.this.onCurrentListChanged(list, list2);
        }
    }

    public ListAdapter(@NonNull DiffUtil.ItemCallback<T> itemCallback) {
        C1341a c1341a = new C1341a();
        this.f9465e = c1341a;
        AsyncListDiffer<T> asyncListDiffer = new AsyncListDiffer<>(new AdapterListUpdateCallback(this), new AsyncDifferConfig.Builder(itemCallback).build());
        this.f9464d = asyncListDiffer;
        asyncListDiffer.addListListener(c1341a);
    }

    @NonNull
    public List<T> getCurrentList() {
        return this.f9464d.getCurrentList();
    }

    public T getItem(int i) {
        return this.f9464d.getCurrentList().get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f9464d.getCurrentList().size();
    }

    public void onCurrentListChanged(@NonNull List<T> list, @NonNull List<T> list2) {
    }

    public void submitList(@Nullable List<T> list) {
        this.f9464d.submitList(list);
    }

    public void submitList(@Nullable List<T> list, @Nullable Runnable runnable) {
        this.f9464d.submitList(list, runnable);
    }

    public ListAdapter(@NonNull AsyncDifferConfig<T> asyncDifferConfig) {
        C1341a c1341a = new C1341a();
        this.f9465e = c1341a;
        AsyncListDiffer<T> asyncListDiffer = new AsyncListDiffer<>(new AdapterListUpdateCallback(this), asyncDifferConfig);
        this.f9464d = asyncListDiffer;
        asyncListDiffer.addListListener(c1341a);
    }
}
