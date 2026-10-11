package com.onyx.android.sdk.matisse.internal.p030ui;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Point;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.imagepicker.C7453R;
import com.onyx.android.sdk.matisse.internal.entity.Item;
import com.onyx.android.sdk.matisse.internal.entity.SelectionSpec;
import com.onyx.android.sdk.matisse.internal.utils.PhotoMetadataUtils;
import com.onyx.android.sdk.matisse.listener.OnFragmentInteractionListener;
import it.sephiroth.android.library.imagezoom.ImageViewTouch;
import it.sephiroth.android.library.imagezoom.ImageViewTouchBase;

/* loaded from: classes7.dex */
public class PreviewItemFragment extends Fragment {

    /* renamed from: d1 */
    public static final String f42763d1 = "args_item";

    /* renamed from: c1 */
    public OnFragmentInteractionListener f42764c1;

    /* renamed from: com.onyx.android.sdk.matisse.internal.ui.PreviewItemFragment$a */
    /* loaded from: classes7.dex */
    public class ViewOnClickListenerC7463a implements View.OnClickListener {

        /* renamed from: e */
        public final /* synthetic */ Item f42765e;

        public ViewOnClickListenerC7463a(Item item) {
            this.f42765e = item;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(this.f42765e.uri, FileExtensionUtils.DEFAULT_MIMETYPE_VIDEO);
            try {
                PreviewItemFragment.this.startActivity(intent);
            } catch (ActivityNotFoundException unused) {
                Toast.makeText(PreviewItemFragment.this.getContext(), C7453R.string.error_no_video_activity, 0).show();
            }
        }
    }

    /* renamed from: com.onyx.android.sdk.matisse.internal.ui.PreviewItemFragment$b */
    /* loaded from: classes7.dex */
    public class C7464b implements ImageViewTouch.OnImageViewTouchSingleTapListener {
        public C7464b() {
        }

        @Override // it.sephiroth.android.library.imagezoom.ImageViewTouch.OnImageViewTouchSingleTapListener
        public void onSingleTapConfirmed() {
            if (PreviewItemFragment.this.f42764c1 != null) {
                PreviewItemFragment.this.f42764c1.onClick();
            }
        }
    }

    public static PreviewItemFragment newInstance(Item item) {
        PreviewItemFragment previewItemFragment = new PreviewItemFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable(f42763d1, item);
        previewItemFragment.setArguments(bundle);
        return previewItemFragment;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof OnFragmentInteractionListener) {
            this.f42764c1 = (OnFragmentInteractionListener) context;
            return;
        }
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(C7453R.layout.fragment_preview_item, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f42764c1 = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        Item item = (Item) getArguments().getParcelable(f42763d1);
        if (item == null) {
            return;
        }
        View findViewById = view.findViewById(C7453R.id.video_play_button);
        if (item.isVideo()) {
            findViewById.setVisibility(0);
            findViewById.setOnClickListener(new ViewOnClickListenerC7463a(item));
        } else {
            findViewById.setVisibility(8);
        }
        ImageViewTouch imageViewTouch = (ImageViewTouch) view.findViewById(C7453R.id.image_view);
        imageViewTouch.setDisplayType(ImageViewTouchBase.DisplayType.FIT_TO_SCREEN);
        imageViewTouch.setSingleTapListener(new C7464b());
        Point bitmapSize = PhotoMetadataUtils.getBitmapSize(item.getContentUri(), getActivity());
        if (item.isGif()) {
            SelectionSpec.getInstance().imageEngine.loadGifImage(getContext(), bitmapSize.x, bitmapSize.y, imageViewTouch, item.getContentUri());
        } else {
            SelectionSpec.getInstance().imageEngine.loadImage(getContext(), bitmapSize.x, bitmapSize.y, imageViewTouch, item.getContentUri());
        }
    }

    public void resetView() {
        if (getView() != null) {
            ((ImageViewTouch) getView().findViewById(C7453R.id.image_view)).resetMatrix();
        }
    }
}
