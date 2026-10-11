package com.onyx.android.sdk.matisse.internal.p030ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.viewpager.widget.ViewPager;
import com.onyx.android.sdk.imagepicker.C7453R;
import com.onyx.android.sdk.matisse.internal.entity.IncapableCause;
import com.onyx.android.sdk.matisse.internal.entity.Item;
import com.onyx.android.sdk.matisse.internal.entity.SelectionSpec;
import com.onyx.android.sdk.matisse.internal.model.SelectedItemCollection;
import com.onyx.android.sdk.matisse.internal.p030ui.adapter.PreviewPagerAdapter;
import com.onyx.android.sdk.matisse.internal.p030ui.widget.CheckRadioView;
import com.onyx.android.sdk.matisse.internal.p030ui.widget.CheckView;
import com.onyx.android.sdk.matisse.internal.p030ui.widget.IncapableDialog;
import com.onyx.android.sdk.matisse.internal.utils.PhotoMetadataUtils;
import com.onyx.android.sdk.matisse.listener.OnCheckedListener;
import com.onyx.android.sdk.matisse.listener.OnFragmentInteractionListener;
import com.onyx.android.sdk.matisse.listener.OnSelectedListener;
import com.sagittarius.p050v6.C13086AB;

/* loaded from: classes17.dex */
public abstract class BasePreviewActivity extends AppCompatActivity implements View.OnClickListener, ViewPager.OnPageChangeListener, OnFragmentInteractionListener {
    public static final String CHECK_STATE = "checkState";
    public static final String EXTRA_DEFAULT_BUNDLE = "extra_default_bundle";
    public static final String EXTRA_RESULT_APPLY = "extra_result_apply";
    public static final String EXTRA_RESULT_BUNDLE = "extra_result_bundle";
    public static final String EXTRA_RESULT_ORIGINAL_ENABLE = "extra_result_original_enable";
    protected PreviewPagerAdapter mAdapter;
    protected TextView mButtonApply;
    protected TextView mButtonBack;
    protected CheckView mCheckView;
    protected boolean mOriginalEnable;
    protected ViewPager mPager;
    protected TextView mSize;
    protected SelectionSpec mSpec;

    /* renamed from: w0 */
    public LinearLayout f42749w0;

    /* renamed from: x0 */
    public CheckRadioView f42750x0;

    /* renamed from: y0 */
    public FrameLayout f42751y0;

    /* renamed from: z0 */
    public FrameLayout f42752z0;
    protected final SelectedItemCollection mSelectedCollection = new SelectedItemCollection(this);
    protected int mPreviousPos = -1;

    /* renamed from: A0 */
    public boolean f42748A0 = false;

    /* renamed from: com.onyx.android.sdk.matisse.internal.ui.BasePreviewActivity$a */
    /* loaded from: classes7.dex */
    public class ViewOnClickListenerC7460a implements View.OnClickListener {
        public ViewOnClickListenerC7460a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BasePreviewActivity basePreviewActivity = BasePreviewActivity.this;
            Item mediaItem = basePreviewActivity.mAdapter.getMediaItem(basePreviewActivity.mPager.getCurrentItem());
            if (BasePreviewActivity.this.mSelectedCollection.isSelected(mediaItem)) {
                BasePreviewActivity.this.mSelectedCollection.remove(mediaItem);
                BasePreviewActivity basePreviewActivity2 = BasePreviewActivity.this;
                if (basePreviewActivity2.mSpec.countable) {
                    basePreviewActivity2.mCheckView.setCheckedNum(Integer.MIN_VALUE);
                } else {
                    basePreviewActivity2.mCheckView.setChecked(false);
                }
            } else if (BasePreviewActivity.this.m33432G(mediaItem)) {
                BasePreviewActivity.this.mSelectedCollection.add(mediaItem);
                BasePreviewActivity basePreviewActivity3 = BasePreviewActivity.this;
                if (basePreviewActivity3.mSpec.countable) {
                    basePreviewActivity3.mCheckView.setCheckedNum(basePreviewActivity3.mSelectedCollection.checkedNumOf(mediaItem));
                } else {
                    basePreviewActivity3.mCheckView.setChecked(true);
                }
            }
            BasePreviewActivity.this.m33434I();
            BasePreviewActivity basePreviewActivity4 = BasePreviewActivity.this;
            OnSelectedListener onSelectedListener = basePreviewActivity4.mSpec.onSelectedListener;
            if (onSelectedListener != null) {
                onSelectedListener.onSelected(basePreviewActivity4.mSelectedCollection.asListOfUri(), BasePreviewActivity.this.mSelectedCollection.asListOfString());
            }
        }
    }

    /* renamed from: com.onyx.android.sdk.matisse.internal.ui.BasePreviewActivity$b */
    /* loaded from: classes7.dex */
    public class ViewOnClickListenerC7461b implements View.OnClickListener {
        public ViewOnClickListenerC7461b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int m33433H = BasePreviewActivity.this.m33433H();
            if (m33433H > 0) {
                IncapableDialog.newInstance("", BasePreviewActivity.this.getString(C7453R.string.error_over_original_count, Integer.valueOf(m33433H), Integer.valueOf(BasePreviewActivity.this.mSpec.originalMaxSize))).show(BasePreviewActivity.this.getSupportFragmentManager(), IncapableDialog.class.getName());
                return;
            }
            BasePreviewActivity basePreviewActivity = BasePreviewActivity.this;
            basePreviewActivity.mOriginalEnable = !basePreviewActivity.mOriginalEnable;
            basePreviewActivity.f42750x0.setChecked(BasePreviewActivity.this.mOriginalEnable);
            BasePreviewActivity basePreviewActivity2 = BasePreviewActivity.this;
            if (!basePreviewActivity2.mOriginalEnable) {
                basePreviewActivity2.f42750x0.setColor(-1);
            }
            BasePreviewActivity basePreviewActivity3 = BasePreviewActivity.this;
            OnCheckedListener onCheckedListener = basePreviewActivity3.mSpec.onCheckedListener;
            if (onCheckedListener != null) {
                onCheckedListener.onCheck(basePreviewActivity3.mOriginalEnable);
            }
        }
    }

    /* renamed from: G */
    public final boolean m33432G(Item item) {
        IncapableCause isAcceptable = this.mSelectedCollection.isAcceptable(item);
        IncapableCause.handleCause(this, isAcceptable);
        return isAcceptable == null;
    }

    /* renamed from: H */
    public final int m33433H() {
        int count = this.mSelectedCollection.count();
        int i = 0;
        for (int i2 = 0; i2 < count; i2++) {
            Item item = this.mSelectedCollection.asList().get(i2);
            if (item.isImage() && PhotoMetadataUtils.getSizeInMB(item.size) > this.mSpec.originalMaxSize) {
                i++;
            }
        }
        return i;
    }

    /* renamed from: I */
    public final void m33434I() {
        int count = this.mSelectedCollection.count();
        if (count == 0) {
            this.mButtonApply.setText(C7453R.string.button_apply_default);
            this.mButtonApply.setEnabled(false);
        } else if (count == 1 && this.mSpec.singleSelectionModeEnabled()) {
            this.mButtonApply.setText(C7453R.string.button_apply_default);
            this.mButtonApply.setEnabled(true);
        } else {
            this.mButtonApply.setEnabled(true);
            this.mButtonApply.setText(getString(C7453R.string.button_apply, Integer.valueOf(count)));
        }
        if (!this.mSpec.originalable) {
            this.f42749w0.setVisibility(8);
        } else {
            this.f42749w0.setVisibility(0);
            m33435J();
        }
    }

    /* renamed from: J */
    public final void m33435J() {
        this.f42750x0.setChecked(this.mOriginalEnable);
        if (!this.mOriginalEnable) {
            this.f42750x0.setColor(-1);
        }
        if (m33433H() <= 0 || !this.mOriginalEnable) {
            return;
        }
        IncapableDialog.newInstance("", getString(C7453R.string.error_over_original_size, Integer.valueOf(this.mSpec.originalMaxSize))).show(getSupportFragmentManager(), IncapableDialog.class.getName());
        this.f42750x0.setChecked(false);
        this.f42750x0.setColor(-1);
        this.mOriginalEnable = false;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        sendBackResult(false);
        super.onBackPressed();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == C7453R.id.button_back) {
            onBackPressed();
        } else if (view.getId() == C7453R.id.button_apply) {
            sendBackResult(true);
            finish();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        C13086AB.m52315v(-1426063347, this, bundle);
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        PreviewPagerAdapter previewPagerAdapter = (PreviewPagerAdapter) this.mPager.getAdapter();
        int i2 = this.mPreviousPos;
        if (i2 != -1 && i2 != i) {
            ((PreviewItemFragment) previewPagerAdapter.instantiateItem((ViewGroup) this.mPager, i2)).resetView();
            Item mediaItem = previewPagerAdapter.getMediaItem(i);
            if (this.mSpec.countable) {
                int checkedNumOf = this.mSelectedCollection.checkedNumOf(mediaItem);
                this.mCheckView.setCheckedNum(checkedNumOf);
                if (checkedNumOf > 0) {
                    this.mCheckView.setEnabled(true);
                } else {
                    this.mCheckView.setEnabled(true ^ this.mSelectedCollection.maxSelectableReached());
                }
            } else {
                boolean isSelected = this.mSelectedCollection.isSelected(mediaItem);
                this.mCheckView.setChecked(isSelected);
                if (isSelected) {
                    this.mCheckView.setEnabled(true);
                } else {
                    this.mCheckView.setEnabled(true ^ this.mSelectedCollection.maxSelectableReached());
                }
            }
            updateSize(mediaItem);
        }
        this.mPreviousPos = i;
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        this.mSelectedCollection.onSaveInstanceState(bundle);
        bundle.putBoolean("checkState", this.mOriginalEnable);
        super.onSaveInstanceState(bundle);
    }

    public void sendBackResult(boolean z) {
        Intent intent = new Intent();
        intent.putExtra(EXTRA_RESULT_BUNDLE, this.mSelectedCollection.getDataWithBundle());
        intent.putExtra(EXTRA_RESULT_APPLY, z);
        intent.putExtra("extra_result_original_enable", this.mOriginalEnable);
        setResult(-1, intent);
    }

    public void updateSize(Item item) {
        if (item.isGif()) {
            this.mSize.setVisibility(0);
            this.mSize.setText(PhotoMetadataUtils.getSizeInMB(item.size) + "M");
        } else {
            this.mSize.setVisibility(8);
        }
        if (item.isVideo()) {
            this.f42749w0.setVisibility(8);
        } else if (this.mSpec.originalable) {
            this.f42749w0.setVisibility(0);
        }
    }

    @Override // com.onyx.android.sdk.matisse.listener.OnFragmentInteractionListener
    public void onClick() {
        if (this.mSpec.autoHideToobar) {
            if (this.f42748A0) {
                this.f42752z0.animate().setInterpolator(new FastOutSlowInInterpolator()).translationYBy(this.f42752z0.getMeasuredHeight()).start();
                this.f42751y0.animate().translationYBy(-this.f42751y0.getMeasuredHeight()).setInterpolator(new FastOutSlowInInterpolator()).start();
            } else {
                this.f42752z0.animate().setInterpolator(new FastOutSlowInInterpolator()).translationYBy(-this.f42752z0.getMeasuredHeight()).start();
                this.f42751y0.animate().setInterpolator(new FastOutSlowInInterpolator()).translationYBy(this.f42751y0.getMeasuredHeight()).start();
            }
            this.f42748A0 = !this.f42748A0;
        }
    }
}
