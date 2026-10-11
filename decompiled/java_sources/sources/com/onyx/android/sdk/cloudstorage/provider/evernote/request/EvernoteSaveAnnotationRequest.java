package com.onyx.android.sdk.cloudstorage.provider.evernote.request;

import com.evernote.client.android.EvernoteUtil;
import com.evernote.client.android.asyncclient.EvernoteNoteStoreClient;
import com.evernote.client.android.asyncclient.EvernoteSearchHelper;
import com.evernote.client.android.type.NoteRef;
import com.evernote.edam.error.EDAMSystemException;
import com.evernote.edam.error.EDAMUserException;
import com.evernote.edam.notestore.NoteFilter;
import com.evernote.edam.type.Note;
import com.evernote.edam.type.Notebook;
import com.evernote.thrift.TException;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.common.utils.AnnotationUtils;
import com.onyx.android.sdk.cloudstorage.common.utils.CloudNoteUtils;
import com.onyx.android.sdk.cloudstorage.model.CloudAnnotation;
import com.onyx.android.sdk.cloudstorage.model.CloudNoteBook;
import com.onyx.android.sdk.cloudstorage.provider.evernote.EverNoteProvider;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u0016\u0010\u0017J\b\u0010\u0003\u001a\u00020\u0002H\u0016J \u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002J\u001a\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0018\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\bH\u0002J\u001a\u0010\u0013\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0015¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveAnnotationRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/evernote/edam/type/Note;", "execute", "Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;", "noteStoreClient", "Lcom/evernote/edam/type/Notebook;", "notebook", "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;", "cloudAnnotation", C6997f.f39671c, "", "noteTitle", "Lcom/evernote/client/android/type/NoteRef;", "b", "e", "d", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;", "noteBook", "a", "c", "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEvernoteSaveAnnotationRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EvernoteSaveAnnotationRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveAnnotationRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,152:1\n1#2:153\n*E\n"})
/* loaded from: classes7.dex */
public final class EvernoteSaveAnnotationRequest extends RxBaseRequest<Note> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final CloudAnnotation cloudAnnotation;

    public EvernoteSaveAnnotationRequest(@NotNull CloudAnnotation cloudAnnotation) {
        Intrinsics.checkNotNullParameter(cloudAnnotation, "cloudAnnotation");
        this.cloudAnnotation = cloudAnnotation;
    }

    /* renamed from: a */
    public final Notebook m32671a(EvernoteNoteStoreClient noteStoreClient, CloudNoteBook noteBook) {
        CloudNoteBook rootNoteBook = CloudNoteUtils.INSTANCE.getRootNoteBook(noteBook);
        Notebook notebook = new Notebook();
        CloudNoteBook.Companion companion = CloudNoteBook.INSTANCE;
        String title = rootNoteBook.getTitle();
        Intrinsics.checkNotNull(title);
        notebook.setName(companion.trim(title));
        try {
            return noteStoreClient.createNotebook(notebook);
        } catch (EDAMSystemException e) {
            e.printStackTrace();
            return null;
        } catch (EDAMUserException e2) {
            e2.printStackTrace();
            return null;
        } catch (TException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    /* renamed from: b */
    public final NoteRef m32672b(Notebook notebook, String noteTitle) {
        NoteFilter noteFilter = new NoteFilter();
        noteFilter.setNotebookGuid(notebook.getGuid());
        try {
            for (NoteRef noteRef : EverNoteProvider.INSTANCE.getSession().getEvernoteClientFactory().getEvernoteSearchHelper().execute(new EvernoteSearchHelper.Search().setNoteFilter(noteFilter)).getAllAsNoteRef()) {
                if (Intrinsics.areEqual(noteRef.getTitle(), noteTitle)) {
                    return noteRef;
                }
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: c */
    public final Notebook m32673c(EvernoteNoteStoreClient noteStoreClient, CloudNoteBook noteBook) throws Exception {
        Notebook next;
        CloudNoteBook.Companion companion;
        String trim;
        String title;
        List<Notebook> listNotebooks = noteStoreClient.listNotebooks();
        CloudNoteBook rootNoteBook = CloudNoteUtils.INSTANCE.getRootNoteBook(noteBook);
        Iterator<Notebook> it2 = listNotebooks.iterator();
        do {
            if (!it2.hasNext()) {
                return null;
            }
            next = it2.next();
            companion = CloudNoteBook.INSTANCE;
            String name = next.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            trim = companion.trim(name);
            title = rootNoteBook.getTitle();
        } while (!StringKt.safelyEqualsIgnoreCase(trim, title != null ? companion.trim(title) : null));
        return next;
    }

    /* renamed from: d */
    public final String m32674d(CloudAnnotation cloudAnnotation) {
        StringBuilder sb = new StringBuilder(EvernoteUtil.NOTE_PREFIX);
        AnnotationUtils annotationUtils = AnnotationUtils.INSTANCE;
        sb.append(annotationUtils.getAnnotationBodyContent(annotationUtils.annotationContentXMLEscape(cloudAnnotation)));
        sb.append(EvernoteUtil.NOTE_SUFFIX);
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    /* renamed from: e */
    public final Note m32675e(Notebook notebook, CloudAnnotation cloudAnnotation) {
        Note note = new Note();
        CloudNoteUtils cloudNoteUtils = CloudNoteUtils.INSTANCE;
        CloudNoteBook noteBook = cloudAnnotation.getNoteBook();
        Intrinsics.checkNotNull(noteBook);
        String title = cloudAnnotation.getTitle();
        Intrinsics.checkNotNull(title);
        note.setTitle(StringKt.fullTrim(cloudNoteUtils.getNoteTitle(noteBook, title)));
        note.setContent(m32674d(cloudAnnotation));
        note.setGuid(cloudAnnotation.getGuid());
        note.setNotebookGuid(notebook.getGuid());
        return note;
    }

    /* renamed from: f */
    public final Note m32676f(EvernoteNoteStoreClient noteStoreClient, Notebook notebook, CloudAnnotation cloudAnnotation) throws Exception {
        Note m32675e = m32675e(notebook, cloudAnnotation);
        CloudNoteUtils cloudNoteUtils = CloudNoteUtils.INSTANCE;
        CloudNoteBook noteBook = cloudAnnotation.getNoteBook();
        Intrinsics.checkNotNull(noteBook);
        String title = cloudAnnotation.getTitle();
        Intrinsics.checkNotNull(title);
        String fullTrim = StringKt.fullTrim(cloudNoteUtils.getNoteTitle(noteBook, title));
        Intrinsics.checkNotNull(fullTrim);
        NoteRef m32672b = m32672b(notebook, fullTrim);
        if (m32672b == null) {
            Note createNote = noteStoreClient.createNote(m32675e);
            Intrinsics.checkNotNullExpressionValue(createNote, "createNote(...)");
            return createNote;
        }
        m32675e.setGuid(m32672b.getGuid());
        Note updateNote = noteStoreClient.updateNote(m32675e);
        Intrinsics.checkNotNullExpressionValue(updateNote, "updateNote(...)");
        return updateNote;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public Note execute() {
        EvernoteNoteStoreClient noteStoreClient = EverNoteProvider.INSTANCE.getSession().getEvernoteClientFactory().getNoteStoreClient();
        Intrinsics.checkNotNull(noteStoreClient);
        CloudNoteBook noteBook = this.cloudAnnotation.getNoteBook();
        Intrinsics.checkNotNull(noteBook);
        Notebook m32673c = m32673c(noteStoreClient, noteBook);
        if (m32673c == null) {
            CloudNoteBook noteBook2 = this.cloudAnnotation.getNoteBook();
            Intrinsics.checkNotNull(noteBook2);
            m32673c = m32671a(noteStoreClient, noteBook2);
        }
        Intrinsics.checkNotNull(m32673c);
        return m32676f(noteStoreClient, m32673c, this.cloudAnnotation);
    }
}
