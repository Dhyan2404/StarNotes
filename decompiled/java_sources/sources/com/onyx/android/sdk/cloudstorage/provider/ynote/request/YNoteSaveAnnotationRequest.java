package com.onyx.android.sdk.cloudstorage.provider.ynote.request;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.common.utils.AnnotationUtils;
import com.onyx.android.sdk.cloudstorage.common.utils.CloudNoteUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.model.CloudAnnotation;
import com.onyx.android.sdk.cloudstorage.model.CloudNoteBook;
import com.onyx.android.sdk.cloudstorage.provider.ynote.YNoteClient;
import com.onyx.android.sdk.cloudstorage.provider.ynote.model.CreateNoteBookResponse;
import com.onyx.android.sdk.cloudstorage.provider.ynote.model.YNote;
import com.onyx.android.sdk.cloudstorage.provider.ynote.model.YNoteBook;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.MultipartBody;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u001e\u001a\u00020\u001c\u0012\u0006\u0010!\u001a\u00020\u001f\u0012\u0006\u0010#\u001a\u00020\u0005¢\u0006\u0004\b$\u0010%J\b\u0010\u0002\u001a\u00020\u0000H\u0016J\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005J\b\u0010\n\u001a\u00020\u0005H\u0002J\u0010\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0002J \u0010\u0010\u001a\u0004\u0018\u00010\u000b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00050\u000e2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0005H\u0002J\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00050\u000e2\u0006\u0010\u0013\u001a\u00020\u0005H\u0002J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0005H\u0002J \u0010\u001a\u001a\u0004\u0018\u00010\u00032\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00030\u000e2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u000e\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00030\u000eH\u0002R\u0014\u0010\u001e\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u001dR\u0014\u0010!\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010 R\u0014\u0010#\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\"¨\u0006&"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "execute", "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;", "noteBook", "", "noteTitle", "content", "", "createNote", C6999h.f39688c, "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNote;", "yNote", "b", "", "notePathList", "c", "path", C6997f.f39671c, "notebook", C6998g.f39679a, "name", "a", "noteBooks", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;", "rootNoteBook", "d", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;", "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;", "noteClient", "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;", "cloudAnnotation", Constants.STRING_SIG, "token", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nYNoteSaveAnnotationRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 YNoteSaveAnnotationRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,160:1\n1#2:161\n*E\n"})
/* loaded from: classes7.dex */
public final class YNoteSaveAnnotationRequest extends RxBaseRequest<YNoteSaveAnnotationRequest> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final YNoteClient noteClient;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudAnnotation cloudAnnotation;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final String token;

    public YNoteSaveAnnotationRequest(@NotNull YNoteClient noteClient, @NotNull CloudAnnotation cloudAnnotation, @NotNull String token) {
        Intrinsics.checkNotNullParameter(noteClient, "noteClient");
        Intrinsics.checkNotNullParameter(cloudAnnotation, "cloudAnnotation");
        Intrinsics.checkNotNullParameter(token, "token");
        this.noteClient = noteClient;
        this.cloudAnnotation = cloudAnnotation;
        this.token = token;
    }

    /* renamed from: a */
    public final YNoteBook m32910a(String name) throws Exception {
        Response<CreateNoteBookResponse> execute = this.noteClient.getYNoteService(CloudStorageConstants.YNOTE_BASE_URL).createNoteBook(this.token, name).execute();
        if (!execute.isSuccessful()) {
            throw new Exception(execute.errorBody().string());
        }
        YNoteBook yNoteBook = new YNoteBook();
        yNoteBook.setName(name);
        yNoteBook.setPath(execute.body().getPath());
        return yNoteBook;
    }

    /* renamed from: b */
    public final void m32911b(YNote yNote) throws Exception {
        Response<ResponseBody> execute = this.noteClient.getYNoteService(CloudStorageConstants.YNOTE_BASE_URL).deleteNote(yNote.getPath()).execute();
        if (!execute.isSuccessful()) {
            throw new Exception(execute.errorBody().string());
        }
    }

    /* renamed from: c */
    public final YNote m32912c(List<String> notePathList, String noteTitle) throws Exception {
        for (String str : notePathList) {
            YNote m32915f = m32915f(str);
            if (Intrinsics.areEqual(m32915f.getTitle(), noteTitle + CloudStorageConstants.YNOTE_TITLE_SUFFIX)) {
                m32915f.setPath(str);
                return m32915f;
            }
        }
        return null;
    }

    public final void createNote(@NotNull YNoteBook noteBook, @NotNull String noteTitle, @NotNull String content) throws Exception {
        Intrinsics.checkNotNullParameter(noteBook, "noteBook");
        Intrinsics.checkNotNullParameter(noteTitle, "noteTitle");
        Intrinsics.checkNotNullParameter(content, "content");
        MultipartBody.Part.Companion companion = MultipartBody.Part.INSTANCE;
        MultipartBody.Part createFormData = companion.createFormData("title", noteTitle);
        String path = noteBook.getPath();
        Intrinsics.checkNotNull(path);
        Response<YNote> execute = this.noteClient.getYNoteService(CloudStorageConstants.YNOTE_BASE_URL).createNote(createFormData, companion.createFormData("notebook", path), companion.createFormData("content", content)).execute();
        if (!execute.isSuccessful()) {
            throw new Exception(execute.errorBody().string());
        }
    }

    /* renamed from: d */
    public final YNoteBook m32913d(List<YNoteBook> noteBooks, CloudNoteBook rootNoteBook) {
        for (YNoteBook yNoteBook : noteBooks) {
            if (Intrinsics.areEqual(yNoteBook.getName(), rootNoteBook.getTitle())) {
                return yNoteBook;
            }
        }
        return null;
    }

    /* renamed from: e */
    public final List<YNoteBook> m32914e() throws Exception {
        Response<List<YNoteBook>> execute = this.noteClient.getYNoteService(CloudStorageConstants.YNOTE_BASE_URL).allNoteBook(this.token).execute();
        if (!execute.isSuccessful()) {
            throw new Exception(execute.errorBody().string());
        }
        List<YNoteBook> body = execute.body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return body;
    }

    /* renamed from: f */
    public final YNote m32915f(String path) throws Exception {
        Response<YNote> execute = this.noteClient.getYNoteService(CloudStorageConstants.YNOTE_BASE_URL).getNoteInfo(this.token, path).execute();
        if (!execute.isSuccessful()) {
            throw new Exception(execute.errorBody().string());
        }
        YNote body = execute.body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return body;
    }

    /* renamed from: g */
    public final List<String> m32916g(String notebook) throws Exception {
        Response<List<String>> execute = this.noteClient.getYNoteService(CloudStorageConstants.YNOTE_BASE_URL).getNoteList(this.token, notebook).execute();
        if (!execute.isSuccessful()) {
            throw new Exception(execute.errorBody().string());
        }
        List<String> body = execute.body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return body;
    }

    /* renamed from: h */
    public final String m32917h() {
        String str = CloudStorageConstants.YNOTE_PREFIX + AnnotationUtils.INSTANCE.getAnnotationBodyContent(this.cloudAnnotation) + CloudStorageConstants.YNOTE_SUFFIX;
        Intrinsics.checkNotNullExpressionValue(str, "toString(...)");
        return str;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public YNoteSaveAnnotationRequest execute() {
        List<YNoteBook> m32914e = m32914e();
        CloudNoteBook noteBook = this.cloudAnnotation.getNoteBook();
        if (noteBook != null) {
            CloudNoteUtils cloudNoteUtils = CloudNoteUtils.INSTANCE;
            CloudNoteBook rootNoteBook = cloudNoteUtils.getRootNoteBook(noteBook);
            YNoteBook m32913d = m32913d(m32914e, rootNoteBook);
            if (m32913d == null) {
                String title = rootNoteBook.getTitle();
                Intrinsics.checkNotNull(title);
                m32913d = m32910a(title);
            }
            if (m32913d != null) {
                CloudNoteBook noteBook2 = this.cloudAnnotation.getNoteBook();
                Intrinsics.checkNotNull(noteBook2);
                String title2 = this.cloudAnnotation.getTitle();
                Intrinsics.checkNotNull(title2);
                String noteTitle = cloudNoteUtils.getNoteTitle(noteBook2, title2);
                String path = m32913d.getPath();
                Intrinsics.checkNotNull(path);
                YNote m32912c = m32912c(m32916g(path), noteTitle);
                if (m32912c != null) {
                    m32911b(m32912c);
                }
                createNote(m32913d, noteTitle, m32917h());
            }
        }
        return this;
    }
}
