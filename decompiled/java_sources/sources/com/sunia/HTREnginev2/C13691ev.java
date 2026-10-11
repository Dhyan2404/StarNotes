package com.sunia.HTREnginev2;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.browser.C0349R;
import androidx.browser.browseractions.BrowserActionItem;
import androidx.browser.browseractions.BrowserServiceFileProvider;
import androidx.core.content.res.ResourcesCompat;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

@Deprecated
/* renamed from: com.sunia.HTREnginev2.ev */
/* loaded from: classes3.dex */
public class C13691ev extends BaseAdapter {

    /* renamed from: e */
    public final List<BrowserActionItem> f69362e;

    /* renamed from: f */
    public final Context f69363f;

    /* renamed from: com.sunia.HTREnginev2.ev$a */
    /* loaded from: classes3.dex */
    public class a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ String f69364e;

        /* renamed from: f */
        public final /* synthetic */ c f69365f;

        /* renamed from: g */
        public final /* synthetic */ ListenableFuture f69366g;

        public a(String str, c cVar, ListenableFuture listenableFuture) {
            this.f69364e = str;
            this.f69365f = cVar;
            this.f69366g = listenableFuture;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Bitmap bitmap;
            if (TextUtils.equals(this.f69364e, this.f69365f.f69370b.getText())) {
                try {
                    bitmap = (Bitmap) this.f69366g.get();
                } catch (InterruptedException | ExecutionException unused) {
                    bitmap = null;
                }
                if (bitmap != null) {
                    this.f69365f.f69369a.setVisibility(0);
                    this.f69365f.f69369a.setImageBitmap(bitmap);
                } else {
                    this.f69365f.f69369a.setVisibility(4);
                    this.f69365f.f69369a.setImageBitmap(null);
                }
            }
        }
    }

    /* renamed from: com.sunia.HTREnginev2.ev$b */
    /* loaded from: classes3.dex */
    public class b implements Executor {
        public b() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            runnable.run();
        }
    }

    /* renamed from: com.sunia.HTREnginev2.ev$c */
    /* loaded from: classes3.dex */
    public static class c {

        /* renamed from: a */
        public final ImageView f69369a;

        /* renamed from: b */
        public final TextView f69370b;

        public c(ImageView imageView, TextView textView) {
            this.f69369a = imageView;
            this.f69370b = textView;
        }
    }

    public C13691ev(List<BrowserActionItem> list, Context context) {
        this.f69362e = list;
        this.f69363f = context;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f69362e.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f69362e.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        c cVar;
        BrowserActionItem browserActionItem = this.f69362e.get(i);
        if (view == null) {
            view = LayoutInflater.from(this.f69363f).inflate(C0349R.layout.browser_actions_context_menu_row, (ViewGroup) null);
            ImageView imageView = (ImageView) view.findViewById(C0349R.id.browser_actions_menu_item_icon);
            TextView textView = (TextView) view.findViewById(C0349R.id.browser_actions_menu_item_text);
            if (imageView == null || textView == null) {
                throw new IllegalStateException("Browser Actions fallback UI does not contain necessary Views.");
            }
            cVar = new c(imageView, textView);
            view.setTag(cVar);
        } else {
            cVar = (c) view.getTag();
        }
        String title = browserActionItem.getTitle();
        cVar.f69370b.setText(title);
        if (browserActionItem.getIconId() != 0) {
            cVar.f69369a.setImageDrawable(ResourcesCompat.getDrawable(this.f69363f.getResources(), browserActionItem.getIconId(), null));
        } else if (browserActionItem.getIconUri() != null) {
            ListenableFuture<Bitmap> loadBitmap = BrowserServiceFileProvider.loadBitmap(this.f69363f.getContentResolver(), browserActionItem.getIconUri());
            loadBitmap.addListener(new a(title, cVar, loadBitmap), new b());
        } else {
            cVar.f69369a.setImageBitmap(null);
            cVar.f69369a.setVisibility(4);
        }
        return view;
    }
}
