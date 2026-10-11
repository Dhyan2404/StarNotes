package com.onyx.android.sdk.cloudstorage.provider.evernote.request;

import com.evernote.client.android.EvernoteSession;
import com.evernote.client.android.EvernoteUtil;
import com.evernote.client.android.asyncclient.EvernoteNoteStoreClient;
import com.evernote.client.android.asyncclient.EvernoteSearchHelper;
import com.evernote.client.android.type.NoteRef;
import com.evernote.edam.error.EDAMErrorCode;
import com.evernote.edam.error.EDAMSystemException;
import com.evernote.edam.error.EDAMUserException;
import com.evernote.edam.notestore.NoteFilter;
import com.evernote.edam.type.Note;
import com.evernote.edam.type.Notebook;
import com.evernote.edam.type.Resource;
import com.evernote.thrift.TException;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.common.utils.CloudNoteUtils;
import com.onyx.android.sdk.cloudstorage.model.CloudNote;
import com.onyx.android.sdk.cloudstorage.model.CloudNoteBook;
import com.onyx.android.sdk.cloudstorage.model.CloudResource;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.FileUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u001e2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001eB\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0018\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u001c\u0010\u001dJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J \u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002J\u001a\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002J\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002J\u0018\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0002J\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0002J\b\u0010\u0017\u001a\u00020\u0011H\u0002R\u0014\u0010\u001a\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0019R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u001b¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/evernote/edam/type/Note;", "execute", "Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;", "noteStoreClient", "Lcom/evernote/edam/type/Notebook;", "notebook", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;", "cloudNote", C6999h.f39688c, "Lcom/evernote/client/android/type/NoteRef;", "e", C6998g.f39679a, "note", "Ljava/io/File;", "file", "", "a", "Lcom/evernote/edam/type/Resource;", "d", "c", C6997f.f39671c, "b", "Lcom/evernote/client/android/EvernoteSession;", "Lcom/evernote/client/android/EvernoteSession;", "session", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;", Constants.CONSTRUCTOR_NAME, "(Lcom/evernote/client/android/EvernoteSession;Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;)V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEvernoteSaveNoteRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EvernoteSaveNoteRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,210:1\n1#2:211\n*E\n"})
/* loaded from: classes7.dex */
public final class EvernoteSaveNoteRequest extends RxBaseRequest<Note> {

    /* renamed from: c */
    public static final long f41596c = 83886080;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final EvernoteSession session;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudNote cloudNote;

    public EvernoteSaveNoteRequest(@NotNull EvernoteSession session, @NotNull CloudNote cloudNote) {
        Intrinsics.checkNotNullParameter(session, "session");
        Intrinsics.checkNotNullParameter(cloudNote, "cloudNote");
        this.session = session;
        this.cloudNote = cloudNote;
    }

    /* renamed from: a */
    public final void m32677a(Note note, File file) {
        Resource m32680d = m32680d(file);
        note.addToResources(m32680d);
        note.setContent(EvernoteUtil.NOTE_PREFIX + EvernoteUtil.createEnMediaTag(m32680d) + EvernoteUtil.NOTE_SUFFIX);
    }

    /* renamed from: b */
    public final void m32678b() throws EDAMUserException {
        CloudResource resource = this.cloudNote.getResource();
        Intrinsics.checkNotNull(resource);
        String pdfPath = resource.getPdfPath();
        Intrinsics.checkNotNull(pdfPath);
        long sizeOf = FileUtils.sizeOf(new File(pdfPath));
        if (sizeOf <= f41596c) {
            return;
        }
        Debug.INSTANCE.m32044e(EvernoteSaveNoteRequest.class, "pdf file len: " + sizeOf, new Object[0]);
        throw new EDAMUserException(EDAMErrorCode.LIMIT_REACHED);
    }

    /* renamed from: c */
    public final Notebook m32679c(EvernoteNoteStoreClient noteStoreClient, CloudNote cloudNote) {
        CloudNoteUtils cloudNoteUtils = CloudNoteUtils.INSTANCE;
        CloudNoteBook noteBook = cloudNote.getNoteBook();
        Intrinsics.checkNotNull(noteBook);
        CloudNoteBook rootNoteBook = cloudNoteUtils.getRootNoteBook(noteBook);
        Notebook notebook = new Notebook();
        String title = rootNoteBook.getTitle();
        notebook.setName(title != null ? CloudNoteBook.INSTANCE.trim(title) : null);
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

    /* JADX WARN: Code restructure failed: missing block: B:14:0x005c, code lost:
    
        if (r1 == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0053, code lost:
    
        okhttp3.internal.Util.closeQuietly(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0051, code lost:
    
        if (r1 == null) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0064  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.evernote.edam.type.Resource m32680d(java.io.File r6) {
        /*
            r5 = this;
            r0 = 0
            java.io.BufferedInputStream r1 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> L4a java.io.IOException -> L4c java.io.FileNotFoundException -> L57
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L4a java.io.IOException -> L4c java.io.FileNotFoundException -> L57
            java.lang.String r3 = r6.getPath()     // Catch: java.lang.Throwable -> L4a java.io.IOException -> L4c java.io.FileNotFoundException -> L57
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L4a java.io.IOException -> L4c java.io.FileNotFoundException -> L57
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L4a java.io.IOException -> L4c java.io.FileNotFoundException -> L57
            com.evernote.client.conn.mobile.FileData r2 = new com.evernote.client.conn.mobile.FileData     // Catch: java.io.IOException -> L46 java.io.FileNotFoundException -> L48 java.lang.Throwable -> L60
            byte[] r3 = com.evernote.client.android.EvernoteUtil.hash(r1)     // Catch: java.io.IOException -> L46 java.io.FileNotFoundException -> L48 java.lang.Throwable -> L60
            java.io.File r4 = new java.io.File     // Catch: java.io.IOException -> L46 java.io.FileNotFoundException -> L48 java.lang.Throwable -> L60
            java.lang.String r6 = r6.getPath()     // Catch: java.io.IOException -> L46 java.io.FileNotFoundException -> L48 java.lang.Throwable -> L60
            r4.<init>(r6)     // Catch: java.io.IOException -> L46 java.io.FileNotFoundException -> L48 java.lang.Throwable -> L60
            r2.<init>(r3, r4)     // Catch: java.io.IOException -> L46 java.io.FileNotFoundException -> L48 java.lang.Throwable -> L60
            com.evernote.edam.type.ResourceAttributes r6 = new com.evernote.edam.type.ResourceAttributes     // Catch: java.io.IOException -> L46 java.io.FileNotFoundException -> L48 java.lang.Throwable -> L60
            r6.<init>()     // Catch: java.io.IOException -> L46 java.io.FileNotFoundException -> L48 java.lang.Throwable -> L60
            com.onyx.android.sdk.cloudstorage.common.utils.CloudNoteUtils r3 = com.onyx.android.sdk.cloudstorage.common.utils.CloudNoteUtils.INSTANCE     // Catch: java.io.IOException -> L46 java.io.FileNotFoundException -> L48 java.lang.Throwable -> L60
            com.onyx.android.sdk.cloudstorage.model.CloudNote r5 = r5.cloudNote     // Catch: java.io.IOException -> L46 java.io.FileNotFoundException -> L48 java.lang.Throwable -> L60
            java.lang.String r5 = r3.getNotePdfTitle(r5)     // Catch: java.io.IOException -> L46 java.io.FileNotFoundException -> L48 java.lang.Throwable -> L60
            r6.setFileName(r5)     // Catch: java.io.IOException -> L46 java.io.FileNotFoundException -> L48 java.lang.Throwable -> L60
            com.evernote.edam.type.Resource r5 = new com.evernote.edam.type.Resource     // Catch: java.io.IOException -> L46 java.io.FileNotFoundException -> L48 java.lang.Throwable -> L60
            r5.<init>()     // Catch: java.io.IOException -> L46 java.io.FileNotFoundException -> L48 java.lang.Throwable -> L60
            r5.setData(r2)     // Catch: java.io.IOException -> L46 java.io.FileNotFoundException -> L48 java.lang.Throwable -> L60
            java.lang.String r2 = "application/pdf"
            r5.setMime(r2)     // Catch: java.io.IOException -> L46 java.io.FileNotFoundException -> L48 java.lang.Throwable -> L60
            r5.setAttributes(r6)     // Catch: java.io.IOException -> L46 java.io.FileNotFoundException -> L48 java.lang.Throwable -> L60
            okhttp3.internal.Util.closeQuietly(r1)
            r0 = r5
            goto L5f
        L46:
            r5 = move-exception
            goto L4e
        L48:
            r5 = move-exception
            goto L59
        L4a:
            r5 = move-exception
            goto L62
        L4c:
            r5 = move-exception
            r1 = r0
        L4e:
            r5.printStackTrace()     // Catch: java.lang.Throwable -> L60
            if (r1 == 0) goto L5f
        L53:
            okhttp3.internal.Util.closeQuietly(r1)
            goto L5f
        L57:
            r5 = move-exception
            r1 = r0
        L59:
            r5.printStackTrace()     // Catch: java.lang.Throwable -> L60
            if (r1 == 0) goto L5f
            goto L53
        L5f:
            return r0
        L60:
            r5 = move-exception
            r0 = r1
        L62:
            if (r0 == 0) goto L67
            okhttp3.internal.Util.closeQuietly(r0)
        L67:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.cloudstorage.provider.evernote.request.EvernoteSaveNoteRequest.m32680d(java.io.File):com.evernote.edam.type.Resource");
    }

    /* renamed from: e */
    public final NoteRef m32681e(Notebook notebook, CloudNote cloudNote) {
        NoteFilter noteFilter = new NoteFilter();
        noteFilter.setNotebookGuid(notebook.getGuid());
        try {
            for (NoteRef noteRef : this.session.getEvernoteClientFactory().getEvernoteSearchHelper().execute(new EvernoteSearchHelper.Search().setNoteFilter(noteFilter)).getAllAsNoteRef()) {
                String title = noteRef.getTitle();
                CloudNoteUtils cloudNoteUtils = CloudNoteUtils.INSTANCE;
                CloudNoteBook noteBook = cloudNote.getNoteBook();
                Intrinsics.checkNotNull(noteBook);
                String title2 = cloudNote.getTitle();
                Intrinsics.checkNotNull(title2);
                if (Intrinsics.areEqual(title, cloudNoteUtils.getNoteTitle(noteBook, title2))) {
                    return noteRef;
                }
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: f */
    public final Notebook m32682f(EvernoteNoteStoreClient noteStoreClient, CloudNote cloudNote) throws Exception {
        Notebook next;
        CloudNoteBook.Companion companion;
        String trim;
        String title;
        List<Notebook> listNotebooks = noteStoreClient.listNotebooks();
        CloudNoteUtils cloudNoteUtils = CloudNoteUtils.INSTANCE;
        CloudNoteBook noteBook = cloudNote.getNoteBook();
        Intrinsics.checkNotNull(noteBook);
        CloudNoteBook rootNoteBook = cloudNoteUtils.getRootNoteBook(noteBook);
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
        } while (!Intrinsics.areEqual(trim, title != null ? companion.trim(title) : null));
        return next;
    }

    /* renamed from: g */
    public final Note m32683g(Notebook notebook, CloudNote cloudNote) {
        Note note = new Note();
        CloudNoteUtils cloudNoteUtils = CloudNoteUtils.INSTANCE;
        CloudNoteBook noteBook = cloudNote.getNoteBook();
        Intrinsics.checkNotNull(noteBook);
        String title = cloudNote.getTitle();
        Intrinsics.checkNotNull(title);
        note.setTitle(StringKt.fullTrim(cloudNoteUtils.getNoteTitle(noteBook, title)));
        note.setGuid(cloudNote.getGuid());
        note.setNotebookGuid(notebook.getGuid());
        CloudResource resource = cloudNote.getResource();
        Intrinsics.checkNotNull(resource);
        String pdfPath = resource.getPdfPath();
        Intrinsics.checkNotNull(pdfPath);
        m32677a(note, new File(pdfPath));
        return note;
    }

    /* renamed from: h */
    public final Note m32684h(EvernoteNoteStoreClient noteStoreClient, Notebook notebook, CloudNote cloudNote) throws Exception {
        Note m32683g = m32683g(notebook, cloudNote);
        NoteRef m32681e = m32681e(notebook, cloudNote);
        if (m32681e == null) {
            Note createNote = noteStoreClient.createNote(m32683g);
            Intrinsics.checkNotNullExpressionValue(createNote, "createNote(...)");
            return createNote;
        }
        m32683g.setGuid(m32681e.getGuid());
        Note updateNote = noteStoreClient.updateNote(m32683g);
        Intrinsics.checkNotNullExpressionValue(updateNote, "updateNote(...)");
        return updateNote;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public Note execute() {
        m32678b();
        EvernoteNoteStoreClient noteStoreClient = this.session.getEvernoteClientFactory().getNoteStoreClient();
        Intrinsics.checkNotNull(noteStoreClient);
        Notebook m32682f = m32682f(noteStoreClient, this.cloudNote);
        if (m32682f == null) {
            m32682f = m32679c(noteStoreClient, this.cloudNote);
        }
        Intrinsics.checkNotNull(m32682f);
        return m32684h(noteStoreClient, m32682f, this.cloudNote);
    }
}
