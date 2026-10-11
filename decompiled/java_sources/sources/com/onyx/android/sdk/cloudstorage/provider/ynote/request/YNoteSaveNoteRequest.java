package com.onyx.android.sdk.cloudstorage.provider.ynote.request;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.common.utils.CloudNoteUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.model.CloudNote;
import com.onyx.android.sdk.cloudstorage.model.CloudNoteBook;
import com.onyx.android.sdk.cloudstorage.model.CloudResource;
import com.onyx.android.sdk.cloudstorage.provider.ynote.YNoteClient;
import com.onyx.android.sdk.cloudstorage.provider.ynote.model.CreateNoteBookResponse;
import com.onyx.android.sdk.cloudstorage.provider.ynote.model.YNote;
import com.onyx.android.sdk.cloudstorage.provider.ynote.model.YNoteBook;
import com.onyx.android.sdk.cloudstorage.provider.ynote.model.YNoteResource;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010#\u001a\u00020!\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010&\u001a\u00020\u000f¢\u0006\u0004\b'\u0010(J\b\u0010\u0002\u001a\u00020\u0000H\u0016J\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J&\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u0016\u0010\u0010\u001a\u00020\u000f2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J \u0010\u0012\u001a\u0004\u0018\u00010\u00032\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00052\u0006\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u000fH\u0002J\u0016\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00052\u0006\u0010\u0015\u001a\u00020\u000fH\u0002J\u0018\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0006\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u000fH\u0002J\u0010\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u000fH\u0002J \u0010\u001f\u001a\u0004\u0018\u00010\n2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\n0\u00052\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J\u000e\u0010 \u001a\b\u0012\u0004\u0012\u00020\n0\u0005H\u0002R\u0014\u0010#\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\"R\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010$R\u0014\u0010&\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010%¨\u0006)"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "execute", "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNote;", "note", "", "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteResource;", "resources", "", "i", "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;", "noteBook", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;", "cloudNote", "a", "", C6999h.f39688c, "notePathList", "c", "path", C6997f.f39671c, "notebook", C6998g.f39679a, C4921e.f26537n, "filePath", "j", "name", "b", "noteBooks", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;", "rootNoteBook", "d", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;", "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;", "noteClient", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;", Constants.STRING_SIG, "token", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class YNoteSaveNoteRequest extends RxBaseRequest<YNoteSaveNoteRequest> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final YNoteClient noteClient;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudNote cloudNote;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final String token;

    public YNoteSaveNoteRequest(@NotNull YNoteClient noteClient, @NotNull CloudNote cloudNote, @NotNull String token) {
        Intrinsics.checkNotNullParameter(noteClient, "noteClient");
        Intrinsics.checkNotNullParameter(cloudNote, "cloudNote");
        Intrinsics.checkNotNullParameter(token, "token");
        this.noteClient = noteClient;
        this.cloudNote = cloudNote;
        this.token = token;
    }

    /* renamed from: a */
    public final void m32918a(YNoteBook noteBook, CloudNote cloudNote, List<YNoteResource> resources) throws Exception {
        MultipartBody.Part.Companion companion = MultipartBody.Part.INSTANCE;
        CloudNoteUtils cloudNoteUtils = CloudNoteUtils.INSTANCE;
        CloudNoteBook noteBook2 = cloudNote.getNoteBook();
        Intrinsics.checkNotNull(noteBook2);
        String title = cloudNote.getTitle();
        Intrinsics.checkNotNull(title);
        MultipartBody.Part createFormData = companion.createFormData("title", cloudNoteUtils.getNoteTitle(noteBook2, title));
        String path = noteBook.getPath();
        Intrinsics.checkNotNull(path);
        Response<YNote> execute = this.noteClient.getYNoteService(CloudStorageConstants.YNOTE_BASE_URL).createNote(createFormData, companion.createFormData("notebook", path), companion.createFormData("content", m32925h(resources))).execute();
        if (!execute.isSuccessful()) {
            throw new Exception(execute.errorBody().string());
        }
    }

    /* renamed from: b */
    public final YNoteBook m32919b(String name) throws Exception {
        Response<CreateNoteBookResponse> execute = this.noteClient.getYNoteService(CloudStorageConstants.YNOTE_BASE_URL).createNoteBook(this.token, name).execute();
        if (!execute.isSuccessful()) {
            throw new Exception(execute.errorBody().string());
        }
        YNoteBook yNoteBook = new YNoteBook();
        yNoteBook.setName(name);
        yNoteBook.setPath(execute.body().getPath());
        return yNoteBook;
    }

    /* renamed from: c */
    public final YNote m32920c(List<String> notePathList, CloudNote cloudNote) throws Exception {
        Iterator<String> it2 = notePathList.iterator();
        while (it2.hasNext()) {
            YNote m32923f = m32923f(it2.next());
            StringBuilder sb = new StringBuilder();
            CloudNoteUtils cloudNoteUtils = CloudNoteUtils.INSTANCE;
            CloudNoteBook noteBook = cloudNote.getNoteBook();
            Intrinsics.checkNotNull(noteBook);
            String title = cloudNote.getTitle();
            Intrinsics.checkNotNull(title);
            sb.append(cloudNoteUtils.getNoteTitle(noteBook, title));
            sb.append(CloudStorageConstants.YNOTE_TITLE_SUFFIX);
            String sb2 = sb.toString();
            if (Intrinsics.areEqual(m32923f.getTitle(), sb2)) {
                m32923f.setPath(sb2);
                return m32923f;
            }
        }
        return null;
    }

    /* renamed from: d */
    public final YNoteBook m32921d(List<YNoteBook> noteBooks, CloudNoteBook rootNoteBook) {
        for (YNoteBook yNoteBook : noteBooks) {
            if (Intrinsics.areEqual(yNoteBook.getName(), rootNoteBook.getTitle())) {
                return yNoteBook;
            }
        }
        return null;
    }

    /* renamed from: e */
    public final List<YNoteBook> m32922e() throws Exception {
        Response<List<YNoteBook>> execute = this.noteClient.getYNoteService(CloudStorageConstants.YNOTE_BASE_URL).allNoteBook(this.token).execute();
        if (!execute.isSuccessful()) {
            throw new Exception(execute.errorBody().string());
        }
        List<YNoteBook> body = execute.body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return body;
    }

    /* renamed from: f */
    public final YNote m32923f(String path) throws Exception {
        Response<YNote> execute = this.noteClient.getYNoteService(CloudStorageConstants.YNOTE_BASE_URL).getNoteInfo(this.token, path).execute();
        if (!execute.isSuccessful()) {
            throw new Exception(execute.errorBody().string());
        }
        YNote body = execute.body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return body;
    }

    /* renamed from: g */
    public final List<String> m32924g(String notebook) throws Exception {
        Response<List<String>> execute = this.noteClient.getYNoteService(CloudStorageConstants.YNOTE_BASE_URL).getNoteList(this.token, notebook).execute();
        if (!execute.isSuccessful()) {
            throw new Exception(execute.errorBody().string());
        }
        List<String> body = execute.body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return body;
    }

    /* renamed from: h */
    public final String m32925h(List<YNoteResource> resources) {
        StringBuilder sb = new StringBuilder();
        for (YNoteResource yNoteResource : resources) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format(CloudStorageConstants.YNOTE_RESOURCE_CONTENT, Arrays.copyOf(new Object[]{yNoteResource.getUrl()}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            sb.append(format);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    /* renamed from: i */
    public final void m32926i(YNote note, List<YNoteResource> resources) throws Exception {
        MultipartBody.Part.Companion companion = MultipartBody.Part.INSTANCE;
        String path = note.getPath();
        Intrinsics.checkNotNull(path);
        Response<ResponseBody> execute = this.noteClient.getYNoteService(CloudStorageConstants.YNOTE_BASE_URL).updateNote(companion.createFormData("path", path), companion.createFormData("content", m32925h(resources))).execute();
        if (!execute.isSuccessful()) {
            throw new Exception(execute.errorBody().string());
        }
    }

    /* renamed from: j */
    public final YNoteResource m32927j(String filePath) throws Exception {
        File file = new File(filePath);
        Response<YNoteResource> execute = this.noteClient.getYNoteService(CloudStorageConstants.YNOTE_BASE_URL).uploadAttachment(MultipartBody.Part.INSTANCE.createFormData("file", URLEncoder.encode(file.getName(), "UTF-8"), RequestBody.INSTANCE.create(file, MediaType.INSTANCE.parse("image/*")))).execute();
        if (!execute.isSuccessful()) {
            throw new Exception(execute.errorBody().string());
        }
        YNoteResource body = execute.body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return body;
    }

    /* renamed from: k */
    public final List<YNoteResource> m32928k(CloudNote cloudNote) throws Exception {
        CloudResource resource = cloudNote.getResource();
        Intrinsics.checkNotNull(resource);
        List<String> imagePaths = resource.getImagePaths();
        List<String> list = imagePaths;
        if (list == null || list.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> it2 = imagePaths.iterator();
        while (it2.hasNext()) {
            arrayList.add(m32927j(it2.next()));
        }
        return arrayList;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public YNoteSaveNoteRequest execute() {
        List<YNoteBook> m32922e = m32922e();
        CloudNoteBook noteBook = this.cloudNote.getNoteBook();
        if (noteBook != null) {
            CloudNoteBook rootNoteBook = CloudNoteUtils.INSTANCE.getRootNoteBook(noteBook);
            YNoteBook m32921d = m32921d(m32922e, rootNoteBook);
            if (m32921d == null) {
                String title = rootNoteBook.getTitle();
                Intrinsics.checkNotNull(title);
                m32921d = m32919b(title);
            }
            if (m32921d != null) {
                List<YNoteResource> m32928k = m32928k(this.cloudNote);
                List<YNoteResource> list = m32928k;
                if (list == null || list.isEmpty()) {
                    return this;
                }
                String path = m32921d.getPath();
                Intrinsics.checkNotNull(path);
                YNote m32920c = m32920c(m32924g(path), this.cloudNote);
                if (m32920c == null) {
                    m32918a(m32921d, this.cloudNote, m32928k);
                } else {
                    m32926i(m32920c, m32928k);
                }
            }
        }
        return this;
    }
}
