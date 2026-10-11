package com.onyx.android.sdk.matisse.internal.utils;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import com.onyx.android.sdk.imagepicker.C7453R;
import com.onyx.android.sdk.matisse.MimeType;
import com.onyx.android.sdk.matisse.filter.Filter;
import com.onyx.android.sdk.matisse.internal.entity.IncapableCause;
import com.onyx.android.sdk.matisse.internal.entity.Item;
import com.onyx.android.sdk.matisse.internal.entity.SelectionSpec;
import com.sunia.HTREnginev2.yyf;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes7.dex */
public final class PhotoMetadataUtils {

    /* renamed from: a */
    public static final String f42835a = "PhotoMetadataUtils";

    /* renamed from: b */
    public static final int f42836b = 1600;

    /* renamed from: c */
    public static final String f42837c = "content";

    public PhotoMetadataUtils() {
        throw new AssertionError("oops! the utility class is about to be instantiated...");
    }

    /* renamed from: a */
    public static boolean m33470a(Context context, Item item) {
        if (context == null) {
            return false;
        }
        ContentResolver contentResolver = context.getContentResolver();
        Iterator<MimeType> it2 = SelectionSpec.getInstance().mimeTypeSet.iterator();
        while (it2.hasNext()) {
            if (it2.next().checkType(contentResolver, item.getContentUri())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static boolean m33471b(ContentResolver contentResolver, Uri uri) {
        try {
            int attributeInt = yyf.m58500d(getPath(contentResolver, uri)).getAttributeInt(ExifInterface.TAG_ORIENTATION, -1);
            return attributeInt == 6 || attributeInt == 8;
        } catch (IOException unused) {
            Log.e(f42835a, "could not read exif info of the image: " + uri);
            return false;
        }
    }

    public static Point getBitmapBound(ContentResolver contentResolver, Uri uri) {
        BitmapFactory.Options options;
        InputStream openInputStream;
        InputStream inputStream = null;
        try {
            try {
                options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                openInputStream = contentResolver.openInputStream(uri);
            } catch (Throwable th) {
                th = th;
            }
        } catch (FileNotFoundException unused) {
        }
        try {
            BitmapFactory.decodeStream(openInputStream, null, options);
            Point point = new Point(options.outWidth, options.outHeight);
            if (openInputStream != null) {
                try {
                    openInputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            return point;
        } catch (FileNotFoundException unused2) {
            inputStream = openInputStream;
            Point point2 = new Point(0, 0);
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
            return point2;
        } catch (Throwable th2) {
            th = th2;
            inputStream = openInputStream;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            }
            throw th;
        }
    }

    public static Point getBitmapSize(Uri uri, Activity activity) {
        ContentResolver contentResolver = activity.getContentResolver();
        Point bitmapBound = getBitmapBound(contentResolver, uri);
        int i = bitmapBound.x;
        int i2 = bitmapBound.y;
        if (m33471b(contentResolver, uri)) {
            i = bitmapBound.y;
            i2 = bitmapBound.x;
        }
        if (i2 == 0) {
            return new Point(f42836b, f42836b);
        }
        activity.getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
        float f = i;
        float f2 = r4.widthPixels / f;
        float f3 = i2;
        float f4 = r4.heightPixels / f3;
        return f2 > f4 ? new Point((int) (f * f2), (int) (f3 * f4)) : new Point((int) (f * f2), (int) (f3 * f4));
    }

    public static String getPath(ContentResolver contentResolver, Uri uri) {
        Cursor cursor = null;
        if (uri == null) {
            return null;
        }
        if (!"content".equals(uri.getScheme())) {
            return uri.getPath();
        }
        try {
            Cursor query = contentResolver.query(uri, new String[]{"_data"}, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        String string = query.getString(query.getColumnIndex("_data"));
                        query.close();
                        return string;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static int getPixelsCount(ContentResolver contentResolver, Uri uri) {
        Point bitmapBound = getBitmapBound(contentResolver, uri);
        return bitmapBound.x * bitmapBound.y;
    }

    public static float getSizeInMB(long j) {
        DecimalFormat decimalFormat = (DecimalFormat) NumberFormat.getNumberInstance(Locale.US);
        decimalFormat.applyPattern("0.0");
        String format = decimalFormat.format((((float) j) / 1024.0f) / 1024.0f);
        Log.e(f42835a, "getSizeInMB: " + format);
        return Float.valueOf(format.replaceAll(",", ".")).floatValue();
    }

    public static IncapableCause isAcceptable(Context context, Item item) {
        if (!m33470a(context, item)) {
            return new IncapableCause(context.getString(C7453R.string.error_file_type));
        }
        if (SelectionSpec.getInstance().filters == null) {
            return null;
        }
        Iterator<Filter> it2 = SelectionSpec.getInstance().filters.iterator();
        while (it2.hasNext()) {
            IncapableCause filter = it2.next().filter(context, item);
            if (filter != null) {
                return filter;
            }
        }
        return null;
    }
}
