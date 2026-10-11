package com.onyx.android.sdk.matisse.p031ui;

import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import com.blankj.utilcode.util.PermissionUtils;
import com.blankj.utilcode.util.ToastUtils;
import com.onyx.android.sdk.base.utils.PermissionCompatUtils;
import com.onyx.android.sdk.imagepicker.C7453R;
import com.onyx.android.sdk.matisse.internal.entity.Album;
import com.onyx.android.sdk.matisse.internal.entity.CaptureStrategy;
import com.onyx.android.sdk.matisse.internal.entity.Item;
import com.onyx.android.sdk.matisse.internal.entity.SelectionSpec;
import com.onyx.android.sdk.matisse.internal.model.AlbumCollection;
import com.onyx.android.sdk.matisse.internal.model.SelectedItemCollection;
import com.onyx.android.sdk.matisse.internal.p030ui.AlbumPreviewActivity;
import com.onyx.android.sdk.matisse.internal.p030ui.BasePreviewActivity;
import com.onyx.android.sdk.matisse.internal.p030ui.MediaSelectionFragment;
import com.onyx.android.sdk.matisse.internal.p030ui.SelectedPreviewActivity;
import com.onyx.android.sdk.matisse.internal.p030ui.adapter.AlbumMediaAdapter;
import com.onyx.android.sdk.matisse.internal.p030ui.adapter.AlbumsAdapter;
import com.onyx.android.sdk.matisse.internal.p030ui.widget.AlbumsSpinner;
import com.onyx.android.sdk.matisse.internal.p030ui.widget.CheckRadioView;
import com.onyx.android.sdk.matisse.internal.p030ui.widget.IncapableDialog;
import com.onyx.android.sdk.matisse.internal.utils.MediaStoreCompat;
import com.onyx.android.sdk.matisse.internal.utils.PathUtils;
import com.onyx.android.sdk.matisse.internal.utils.PhotoMetadataUtils;
import com.onyx.android.sdk.matisse.internal.utils.SingleMediaScanner;
import com.onyx.android.sdk.matisse.listener.OnCheckedListener;
import com.onyx.android.sdk.matisse.listener.OnSelectedListener;
import com.sagittarius.p050v6.C13086AB;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes17.dex */
public class MatisseActivity extends AppCompatActivity implements AlbumCollection.AlbumCallbacks, AdapterView.OnItemSelectedListener, MediaSelectionFragment.SelectionProvider, View.OnClickListener, AlbumMediaAdapter.CheckStateListener, AlbumMediaAdapter.OnMediaClickListener, AlbumMediaAdapter.OnPhotoCapture {
    public static final String CHECK_STATE = "checkState";
    public static final String EXTRA_RESULT_ORIGINAL_ENABLE = "extra_result_original_enable";
    public static final String EXTRA_RESULT_SELECTION = "extra_result_selection";
    public static final String EXTRA_RESULT_SELECTION_PATH = "extra_result_selection_path";

    /* renamed from: J0 */
    public static final int f42841J0 = 23;

    /* renamed from: K0 */
    public static final int f42842K0 = 24;

    /* renamed from: A0 */
    public AlbumsSpinner f42843A0;

    /* renamed from: B0 */
    public AlbumsAdapter f42844B0;

    /* renamed from: C0 */
    public TextView f42845C0;

    /* renamed from: D0 */
    public TextView f42846D0;

    /* renamed from: E0 */
    public View f42847E0;

    /* renamed from: F0 */
    public View f42848F0;

    /* renamed from: G0 */
    public LinearLayout f42849G0;

    /* renamed from: H0 */
    public CheckRadioView f42850H0;

    /* renamed from: I0 */
    public boolean f42851I0;

    /* renamed from: x0 */
    public MediaStoreCompat f42853x0;

    /* renamed from: z0 */
    public SelectionSpec f42855z0;

    /* renamed from: w0 */
    public final AlbumCollection f42852w0 = new AlbumCollection();

    /* renamed from: y0 */
    public SelectedItemCollection f42854y0 = new SelectedItemCollection(this);

    /* renamed from: com.onyx.android.sdk.matisse.ui.MatisseActivity$a */
    /* loaded from: classes7.dex */
    public class C7472a implements PermissionUtils.FullCallback {

        /* renamed from: a */
        public final /* synthetic */ WeakReference f42856a;

        public C7472a(WeakReference weakReference) {
            this.f42856a = weakReference;
        }

        @Override // com.blankj.utilcode.util.PermissionUtils.FullCallback
        public void onDenied(@NonNull List<String> list, @NonNull List<String> list2) {
            if (MatisseActivity.this.m33479J().booleanValue()) {
                MatisseActivity.this.m33480K((Bundle) this.f42856a.get());
                return;
            }
            ToastUtils.showLong(C7453R.string.permission_denied);
            MatisseActivity.this.setResult(0);
            MatisseActivity.this.finish();
        }

        @Override // com.blankj.utilcode.util.PermissionUtils.FullCallback
        public void onGranted(@NonNull List<String> list) {
            MatisseActivity.this.m33480K((Bundle) this.f42856a.get());
        }
    }

    /* renamed from: com.onyx.android.sdk.matisse.ui.MatisseActivity$b */
    /* loaded from: classes7.dex */
    public class C7473b implements SingleMediaScanner.ScanListener {
        public C7473b() {
        }

        @Override // com.onyx.android.sdk.matisse.internal.utils.SingleMediaScanner.ScanListener
        public void onScanFinish() {
            Log.i("SingleMediaScanner", "scan finish!");
        }
    }

    /* renamed from: com.onyx.android.sdk.matisse.ui.MatisseActivity$c */
    /* loaded from: classes7.dex */
    public class RunnableC7474c implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ Cursor f42859e;

        public RunnableC7474c(Cursor cursor) {
            this.f42859e = cursor;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f42859e.moveToPosition(MatisseActivity.this.f42852w0.getCurrentSelection());
            AlbumsSpinner albumsSpinner = MatisseActivity.this.f42843A0;
            MatisseActivity matisseActivity = MatisseActivity.this;
            albumsSpinner.setSelection(matisseActivity, matisseActivity.f42852w0.getCurrentSelection());
            Album valueOf = Album.valueOf(this.f42859e);
            if (valueOf.isAll() && SelectionSpec.getInstance().capture) {
                valueOf.addCaptureCount();
            }
            MatisseActivity.this.m33481L(valueOf);
        }
    }

    /* renamed from: H */
    public final int m33477H() {
        int count = this.f42854y0.count();
        int i = 0;
        for (int i2 = 0; i2 < count; i2++) {
            Item item = this.f42854y0.asList().get(i2);
            if (item.isImage() && PhotoMetadataUtils.getSizeInMB(item.size) > this.f42855z0.originalMaxSize) {
                i++;
            }
        }
        return i;
    }

    /* renamed from: I */
    public final String[] m33478I() {
        int i = Build.VERSION.SDK_INT;
        return i >= 34 ? new String[]{"android.permission.READ_MEDIA_VISUAL_USER_SELECTED", "android.permission.READ_MEDIA_IMAGES", "android.permission.READ_MEDIA_VIDEO"} : i >= 33 ? new String[]{"android.permission.READ_MEDIA_IMAGES", "android.permission.READ_MEDIA_VIDEO"} : new String[]{"android.permission.READ_EXTERNAL_STORAGE"};
    }

    /* renamed from: J */
    public final Boolean m33479J() {
        return Boolean.valueOf(PermissionCompatUtils.INSTANCE.hasMediaOfUserSelectedPermission(Arrays.asList(m33478I())));
    }

    /* renamed from: K */
    public final void m33480K(Bundle bundle) {
        if (this.f42855z0.needOrientationRestriction()) {
            setRequestedOrientation(this.f42855z0.orientation);
        }
        if (this.f42855z0.capture) {
            MediaStoreCompat mediaStoreCompat = new MediaStoreCompat(this);
            this.f42853x0 = mediaStoreCompat;
            CaptureStrategy captureStrategy = this.f42855z0.captureStrategy;
            if (captureStrategy == null) {
                throw new RuntimeException("Don't forget to set CaptureStrategy.");
            }
            mediaStoreCompat.setCaptureStrategy(captureStrategy);
        }
        Toolbar toolbar = (Toolbar) findViewById(C7453R.id.toolbar);
        setSupportActionBar(toolbar);
        ActionBar supportActionBar = getSupportActionBar();
        supportActionBar.setDisplayShowTitleEnabled(false);
        supportActionBar.setDisplayHomeAsUpEnabled(true);
        Drawable navigationIcon = toolbar.getNavigationIcon();
        TypedArray obtainStyledAttributes = getTheme().obtainStyledAttributes(new int[]{C7453R.attr.album_element_color});
        int color = obtainStyledAttributes.getColor(0, 0);
        obtainStyledAttributes.recycle();
        navigationIcon.setColorFilter(color, PorterDuff.Mode.SRC_IN);
        this.f42845C0 = (TextView) findViewById(C7453R.id.button_preview);
        this.f42846D0 = (TextView) findViewById(C7453R.id.button_apply);
        this.f42845C0.setOnClickListener(this);
        this.f42846D0.setOnClickListener(this);
        this.f42847E0 = findViewById(C7453R.id.container);
        this.f42848F0 = findViewById(C7453R.id.empty_view);
        this.f42849G0 = (LinearLayout) findViewById(C7453R.id.originalLayout);
        this.f42850H0 = (CheckRadioView) findViewById(C7453R.id.original);
        this.f42849G0.setOnClickListener(this);
        this.f42854y0.onCreate(bundle);
        if (bundle != null) {
            this.f42851I0 = bundle.getBoolean("checkState");
        }
        m33484O();
        this.f42844B0 = new AlbumsAdapter((Context) this, (Cursor) null, false);
        AlbumsSpinner albumsSpinner = new AlbumsSpinner(this);
        this.f42843A0 = albumsSpinner;
        albumsSpinner.setOnItemSelectedListener(this);
        this.f42843A0.setSelectedTextView((TextView) findViewById(C7453R.id.selected_album));
        this.f42843A0.setPopupAnchorView(findViewById(C7453R.id.toolbar));
        this.f42843A0.setAdapter(this.f42844B0);
        this.f42852w0.onCreate(this, this);
        this.f42852w0.onRestoreInstanceState(bundle);
        this.f42852w0.loadAlbums();
    }

    /* renamed from: L */
    public final void m33481L(Album album) {
        if (album.isAll() && album.isEmpty()) {
            this.f42847E0.setVisibility(8);
            this.f42848F0.setVisibility(0);
        } else {
            this.f42847E0.setVisibility(0);
            this.f42848F0.setVisibility(8);
            getSupportFragmentManager().beginTransaction().replace(C7453R.id.container, MediaSelectionFragment.newInstance(album), MediaSelectionFragment.class.getSimpleName()).commitAllowingStateLoss();
        }
    }

    /* renamed from: M */
    public final Boolean m33482M() {
        return m33479J().booleanValue() ? Boolean.TRUE : Boolean.valueOf(PermissionUtils.isGranted(m33478I()));
    }

    /* renamed from: N */
    public final void m33483N(Bundle bundle) {
        PermissionUtils.permission(m33478I()).callback(new C7472a(new WeakReference(bundle))).request();
    }

    /* renamed from: O */
    public final void m33484O() {
        int count = this.f42854y0.count();
        if (count == 0) {
            this.f42845C0.setEnabled(false);
            this.f42846D0.setEnabled(false);
            this.f42846D0.setText(getString(C7453R.string.button_apply_default));
        } else if (count == 1 && this.f42855z0.singleSelectionModeEnabled()) {
            this.f42845C0.setEnabled(true);
            this.f42846D0.setText(C7453R.string.button_apply_default);
            this.f42846D0.setEnabled(true);
        } else {
            this.f42845C0.setEnabled(true);
            this.f42846D0.setEnabled(true);
            this.f42846D0.setText(getString(C7453R.string.button_apply, Integer.valueOf(count)));
        }
        if (!this.f42855z0.originalable) {
            this.f42849G0.setVisibility(4);
        } else {
            this.f42849G0.setVisibility(0);
            m33485P();
        }
    }

    /* renamed from: P */
    public final void m33485P() {
        this.f42850H0.setChecked(this.f42851I0);
        if (m33477H() <= 0 || !this.f42851I0) {
            return;
        }
        IncapableDialog.newInstance("", getString(C7453R.string.error_over_original_size, Integer.valueOf(this.f42855z0.originalMaxSize))).show(getSupportFragmentManager(), IncapableDialog.class.getName());
        this.f42850H0.setChecked(false);
        this.f42851I0 = false;
    }

    @Override // com.onyx.android.sdk.matisse.internal.ui.adapter.AlbumMediaAdapter.OnPhotoCapture
    public void capture() {
        MediaStoreCompat mediaStoreCompat = this.f42853x0;
        if (mediaStoreCompat != null) {
            mediaStoreCompat.dispatchCaptureIntent(this, 24);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 != -1) {
            return;
        }
        if (i != 23) {
            if (i == 24) {
                Uri currentPhotoUri = this.f42853x0.getCurrentPhotoUri();
                String currentPhotoPath = this.f42853x0.getCurrentPhotoPath();
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
                arrayList.add(currentPhotoUri);
                ArrayList<String> arrayList2 = new ArrayList<>();
                arrayList2.add(currentPhotoPath);
                Intent intent2 = new Intent();
                intent2.putParcelableArrayListExtra(EXTRA_RESULT_SELECTION, arrayList);
                intent2.putStringArrayListExtra(EXTRA_RESULT_SELECTION_PATH, arrayList2);
                setResult(-1, intent2);
                new SingleMediaScanner(getApplicationContext(), currentPhotoPath, new C7473b());
                finish();
                return;
            }
            return;
        }
        Bundle bundleExtra = intent.getBundleExtra(BasePreviewActivity.EXTRA_RESULT_BUNDLE);
        ArrayList<Item> parcelableArrayList = bundleExtra.getParcelableArrayList(SelectedItemCollection.STATE_SELECTION);
        this.f42851I0 = intent.getBooleanExtra("extra_result_original_enable", false);
        int i3 = bundleExtra.getInt(SelectedItemCollection.STATE_COLLECTION_TYPE, 0);
        if (!intent.getBooleanExtra(BasePreviewActivity.EXTRA_RESULT_APPLY, false)) {
            this.f42854y0.overwrite(parcelableArrayList, i3);
            Fragment findFragmentByTag = getSupportFragmentManager().findFragmentByTag(MediaSelectionFragment.class.getSimpleName());
            if (findFragmentByTag instanceof MediaSelectionFragment) {
                ((MediaSelectionFragment) findFragmentByTag).refreshMediaGrid();
            }
            m33484O();
            return;
        }
        Intent intent3 = new Intent();
        ArrayList<? extends Parcelable> arrayList3 = new ArrayList<>();
        ArrayList<String> arrayList4 = new ArrayList<>();
        if (parcelableArrayList != null) {
            Iterator<Item> it2 = parcelableArrayList.iterator();
            while (it2.hasNext()) {
                Item next = it2.next();
                arrayList3.add(next.getContentUri());
                arrayList4.add(PathUtils.getPath(this, next.getContentUri()));
            }
        }
        intent3.putParcelableArrayListExtra(EXTRA_RESULT_SELECTION, arrayList3);
        intent3.putStringArrayListExtra(EXTRA_RESULT_SELECTION_PATH, arrayList4);
        intent3.putExtra("extra_result_original_enable", this.f42851I0);
        setResult(-1, intent3);
        finish();
    }

    @Override // com.onyx.android.sdk.matisse.internal.model.AlbumCollection.AlbumCallbacks
    public void onAlbumLoad(Cursor cursor) {
        this.f42844B0.swapCursor(cursor);
        new Handler(Looper.getMainLooper()).post(new RunnableC7474c(cursor));
    }

    @Override // com.onyx.android.sdk.matisse.internal.model.AlbumCollection.AlbumCallbacks
    public void onAlbumReset() {
        this.f42844B0.swapCursor(null);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        setResult(0);
        super.onBackPressed();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == C7453R.id.button_preview) {
            Intent intent = new Intent(this, (Class<?>) SelectedPreviewActivity.class);
            intent.putExtra(BasePreviewActivity.EXTRA_DEFAULT_BUNDLE, this.f42854y0.getDataWithBundle());
            intent.putExtra("extra_result_original_enable", this.f42851I0);
            startActivityForResult(intent, 23);
            return;
        }
        if (view.getId() == C7453R.id.button_apply) {
            Intent intent2 = new Intent();
            intent2.putParcelableArrayListExtra(EXTRA_RESULT_SELECTION, (ArrayList) this.f42854y0.asListOfUri());
            intent2.putStringArrayListExtra(EXTRA_RESULT_SELECTION_PATH, (ArrayList) this.f42854y0.asListOfString());
            intent2.putExtra("extra_result_original_enable", this.f42851I0);
            setResult(-1, intent2);
            finish();
            return;
        }
        if (view.getId() == C7453R.id.originalLayout) {
            int m33477H = m33477H();
            if (m33477H > 0) {
                IncapableDialog.newInstance("", getString(C7453R.string.error_over_original_count, Integer.valueOf(m33477H), Integer.valueOf(this.f42855z0.originalMaxSize))).show(getSupportFragmentManager(), IncapableDialog.class.getName());
                return;
            }
            boolean z = !this.f42851I0;
            this.f42851I0 = z;
            this.f42850H0.setChecked(z);
            OnCheckedListener onCheckedListener = this.f42855z0.onCheckedListener;
            if (onCheckedListener != null) {
                onCheckedListener.onCheck(this.f42851I0);
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        C13086AB.m52315v(-1426063344, this, bundle);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f42852w0.onDestroy();
        SelectionSpec selectionSpec = this.f42855z0;
        selectionSpec.onCheckedListener = null;
        selectionSpec.onSelectedListener = null;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        this.f42852w0.setStateCurrentSelection(i);
        this.f42844B0.getCursor().moveToPosition(i);
        Album valueOf = Album.valueOf(this.f42844B0.getCursor());
        if (valueOf.isAll() && SelectionSpec.getInstance().capture) {
            valueOf.addCaptureCount();
        }
        m33481L(valueOf);
    }

    @Override // com.onyx.android.sdk.matisse.internal.ui.adapter.AlbumMediaAdapter.OnMediaClickListener
    public void onMediaClick(Album album, Item item, int i) {
        Intent intent = new Intent(this, (Class<?>) AlbumPreviewActivity.class);
        intent.putExtra("extra_album", album);
        intent.putExtra(AlbumPreviewActivity.EXTRA_ITEM, item);
        intent.putExtra(BasePreviewActivity.EXTRA_DEFAULT_BUNDLE, this.f42854y0.getDataWithBundle());
        intent.putExtra("extra_result_original_enable", this.f42851I0);
        startActivityForResult(intent, 23);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        onBackPressed();
        return true;
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.f42854y0.onSaveInstanceState(bundle);
        this.f42852w0.onSaveInstanceState(bundle);
        bundle.putBoolean("checkState", this.f42851I0);
    }

    @Override // com.onyx.android.sdk.matisse.internal.ui.adapter.AlbumMediaAdapter.CheckStateListener
    public void onUpdate() {
        m33484O();
        OnSelectedListener onSelectedListener = this.f42855z0.onSelectedListener;
        if (onSelectedListener != null) {
            onSelectedListener.onSelected(this.f42854y0.asListOfUri(), this.f42854y0.asListOfString());
        }
    }

    @Override // com.onyx.android.sdk.matisse.internal.ui.MediaSelectionFragment.SelectionProvider
    public SelectedItemCollection provideSelectedItemCollection() {
        return this.f42854y0;
    }
}
