package com.evernote.client.android.asyncclient;

import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.evernote.client.android.EvernoteSession;
import com.evernote.client.android.helper.EvernotePreconditions;
import com.evernote.client.android.type.NoteRef;
import com.evernote.edam.error.EDAMNotFoundException;
import com.evernote.edam.error.EDAMSystemException;
import com.evernote.edam.error.EDAMUserException;
import com.evernote.edam.notestore.NoteFilter;
import com.evernote.edam.notestore.NoteMetadata;
import com.evernote.edam.notestore.NotesMetadataList;
import com.evernote.edam.notestore.NotesMetadataResultSpec;
import com.evernote.edam.type.LinkedNotebook;
import com.evernote.edam.type.NoteSortOrder;
import com.evernote.edam.type.Notebook;
import com.evernote.thrift.TException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/* loaded from: classes4.dex */
public class EvernoteSearchHelper extends EvernoteAsyncClient {

    /* renamed from: d */
    public final EvernoteSession f21075d;

    /* renamed from: e */
    public final EvernoteClientFactory f21076e;

    /* renamed from: f */
    public final EvernoteNoteStoreClient f21077f;

    /* loaded from: classes4.dex */
    public static final class Result {

        /* renamed from: a */
        public final List<NotesMetadataList> f21078a;

        /* renamed from: b */
        public final Map<Pair<String, LinkedNotebook>, List<NotesMetadataList>> f21079b;

        /* renamed from: c */
        public final Map<Pair<String, LinkedNotebook>, List<NotesMetadataList>> f21080c;

        /* renamed from: d */
        public NoteRef.Factory f21081d;

        public /* synthetic */ Result(Set set, CallableC4552a callableC4552a) {
            this(set);
        }

        /* renamed from: d */
        public final void m17037d(LinkedNotebook linkedNotebook, List<NotesMetadataList> list) {
            this.f21080c.put(new Pair<>(linkedNotebook.getGuid(), linkedNotebook), list);
        }

        /* renamed from: e */
        public final void m17038e(LinkedNotebook linkedNotebook, List<NotesMetadataList> list) {
            this.f21079b.put(new Pair<>(linkedNotebook.getGuid(), linkedNotebook), list);
        }

        /* renamed from: f */
        public final void m17039f(List<NotesMetadataList> list) {
            this.f21078a.addAll(list);
        }

        public void fillNoteRef(List<NotesMetadataList> list, List<NoteRef> list2, LinkedNotebook linkedNotebook) {
            Iterator<NotesMetadataList> it2 = list.iterator();
            while (it2.hasNext()) {
                for (NoteMetadata noteMetadata : it2.next().getNotes()) {
                    NoteRef.Factory factory = this.f21081d;
                    list2.add(linkedNotebook == null ? factory.fromPersonal(noteMetadata) : factory.fromLinked(noteMetadata, linkedNotebook));
                }
            }
        }

        public List<NoteRef> getAllAsNoteRef() {
            ArrayList arrayList = new ArrayList();
            List<NoteRef> personalResultsAsNoteRef = getPersonalResultsAsNoteRef();
            if (personalResultsAsNoteRef != null) {
                arrayList.addAll(personalResultsAsNoteRef);
            }
            List<NoteRef> linkedNotebookResultsAsNoteRef = getLinkedNotebookResultsAsNoteRef();
            if (linkedNotebookResultsAsNoteRef != null) {
                arrayList.addAll(linkedNotebookResultsAsNoteRef);
            }
            List<NoteRef> businessResultsAsNoteRef = getBusinessResultsAsNoteRef();
            if (businessResultsAsNoteRef != null) {
                arrayList.addAll(businessResultsAsNoteRef);
            }
            return arrayList;
        }

        public Map<Pair<String, LinkedNotebook>, List<NotesMetadataList>> getBusinessResults() {
            return this.f21080c;
        }

        public List<NoteRef> getBusinessResultsAsNoteRef() {
            if (this.f21080c == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Pair<String, LinkedNotebook> pair : this.f21080c.keySet()) {
                fillNoteRef(this.f21080c.get(pair), arrayList, (LinkedNotebook) pair.second);
            }
            return arrayList;
        }

        public Map<Pair<String, LinkedNotebook>, List<NotesMetadataList>> getLinkedNotebookResults() {
            return this.f21079b;
        }

        public List<NoteRef> getLinkedNotebookResultsAsNoteRef() {
            if (this.f21079b == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Pair<String, LinkedNotebook> pair : this.f21079b.keySet()) {
                fillNoteRef(this.f21079b.get(pair), arrayList, (LinkedNotebook) pair.second);
            }
            return arrayList;
        }

        public List<NotesMetadataList> getPersonalResults() {
            return this.f21078a;
        }

        public List<NoteRef> getPersonalResultsAsNoteRef() {
            if (this.f21078a == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            fillNoteRef(this.f21078a, arrayList, null);
            return arrayList;
        }

        public void setNoteRefFactory(@NonNull NoteRef.Factory factory) {
            this.f21081d = (NoteRef.Factory) EvernotePreconditions.checkNotNull(factory);
        }

        public Result(Set<Scope> set) {
            this.f21078a = set.contains(Scope.PERSONAL_NOTES) ? new ArrayList() : null;
            this.f21079b = set.contains(Scope.LINKED_NOTEBOOKS) ? new HashMap() : null;
            this.f21080c = set.contains(Scope.BUSINESS) ? new HashMap() : null;
            this.f21081d = new NoteRef.DefaultFactory();
        }
    }

    /* loaded from: classes4.dex */
    public enum Scope {
        PERSONAL_NOTES,
        LINKED_NOTEBOOKS,
        BUSINESS
    }

    /* loaded from: classes4.dex */
    public static class Search {

        /* renamed from: d */
        public NoteFilter f21085d;

        /* renamed from: e */
        public NotesMetadataResultSpec f21086e;

        /* renamed from: i */
        public boolean f21090i;

        /* renamed from: a */
        public final EnumSet<Scope> f21082a = EnumSet.noneOf(Scope.class);

        /* renamed from: b */
        public final List<LinkedNotebook> f21083b = new ArrayList();

        /* renamed from: c */
        public final List<LinkedNotebook> f21084c = new ArrayList();

        /* renamed from: f */
        public int f21087f = -1;

        /* renamed from: g */
        public int f21088g = -1;

        /* renamed from: h */
        public int f21089h = -1;

        public Search addLinkedNotebook(LinkedNotebook linkedNotebook) {
            if (EvernoteBusinessNotebookHelper.isBusinessNotebook(linkedNotebook)) {
                addScope(Scope.BUSINESS);
                this.f21084c.add(linkedNotebook);
            } else {
                addScope(Scope.LINKED_NOTEBOOKS);
                this.f21083b.add(linkedNotebook);
            }
            return this;
        }

        public Search addScope(Scope scope) {
            this.f21082a.add(scope);
            return this;
        }

        /* renamed from: i */
        public final int m17048i() {
            int i = this.f21088g;
            if (i < 0) {
                return 10;
            }
            return i;
        }

        public boolean isIgnoreExceptions() {
            return this.f21090i;
        }

        /* renamed from: j */
        public final NoteFilter m17049j() {
            if (this.f21085d == null) {
                NoteFilter noteFilter = new NoteFilter();
                this.f21085d = noteFilter;
                noteFilter.setOrder(NoteSortOrder.UPDATED.getValue());
            }
            return this.f21085d;
        }

        /* renamed from: k */
        public final int m17050k() {
            int i = this.f21087f;
            if (i < 0) {
                return 0;
            }
            return i;
        }

        /* renamed from: l */
        public final int m17051l() {
            int i = this.f21089h;
            if (i < 0) {
                return 10;
            }
            return i;
        }

        /* renamed from: m */
        public final NotesMetadataResultSpec m17052m() {
            if (this.f21086e == null) {
                NotesMetadataResultSpec notesMetadataResultSpec = new NotesMetadataResultSpec();
                this.f21086e = notesMetadataResultSpec;
                notesMetadataResultSpec.setIncludeTitle(true);
                this.f21086e.setIncludeNotebookGuid(true);
            }
            return this.f21086e;
        }

        /* renamed from: n */
        public final EnumSet<Scope> m17053n() {
            if (this.f21082a.isEmpty()) {
                this.f21082a.add(Scope.PERSONAL_NOTES);
            }
            return this.f21082a;
        }

        public Search setIgnoreExceptions(boolean z) {
            this.f21090i = z;
            return this;
        }

        public Search setMaxNotes(int i) {
            this.f21088g = EvernotePreconditions.checkArgumentPositive(i, "maxNotes must be greater or equal 1");
            return this;
        }

        public Search setNoteFilter(NoteFilter noteFilter) {
            this.f21085d = (NoteFilter) EvernotePreconditions.checkNotNull(noteFilter);
            return this;
        }

        public Search setOffset(int i) {
            this.f21087f = EvernotePreconditions.checkArgumentNonnegative(i, "negative value now allowed");
            return this;
        }

        public Search setPageSize(int i) {
            this.f21089h = EvernotePreconditions.checkArgumentPositive(i, "pageSize must be greater or equal 1");
            return this;
        }

        public Search setResultSpec(NotesMetadataResultSpec notesMetadataResultSpec) {
            this.f21086e = (NotesMetadataResultSpec) EvernotePreconditions.checkNotNull(notesMetadataResultSpec);
            return this;
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteSearchHelper$a */
    /* loaded from: classes4.dex */
    public class CallableC4552a implements Callable<Result> {

        /* renamed from: e */
        public final /* synthetic */ Search f21091e;

        public CallableC4552a(Search search) {
            this.f21091e = search;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Result call() throws Exception {
            return EvernoteSearchHelper.this.execute(this.f21091e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteSearchHelper$b */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4553b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f21093a;

        static {
            int[] iArr = new int[Scope.values().length];
            f21093a = iArr;
            try {
                iArr[Scope.PERSONAL_NOTES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f21093a[Scope.LINKED_NOTEBOOKS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f21093a[Scope.BUSINESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public EvernoteSearchHelper(@NonNull EvernoteSession evernoteSession, @NonNull ExecutorService executorService) {
        super(executorService);
        EvernoteSession evernoteSession2 = (EvernoteSession) EvernotePreconditions.checkNotNull(evernoteSession);
        this.f21075d = evernoteSession2;
        EvernoteClientFactory evernoteClientFactory = evernoteSession2.getEvernoteClientFactory();
        this.f21076e = evernoteClientFactory;
        this.f21077f = evernoteClientFactory.getNoteStoreClient();
    }

    /* renamed from: e */
    public final void m17033e(Search search, Exception exc) throws Exception {
        if (!search.isIgnoreExceptions()) {
            throw exc;
        }
    }

    public Result execute(@NonNull Search search) throws Exception {
        if (search.m17050k() >= search.m17048i()) {
            throw new IllegalArgumentException("offset must be less than max notes");
        }
        Result result = new Result(search.m17053n(), null);
        Iterator it2 = search.m17053n().iterator();
        while (it2.hasNext()) {
            int i = C4553b.f21093a[((Scope) it2.next()).ordinal()];
            if (i == 1) {
                try {
                    result.m17039f(findPersonalNotes(search));
                } catch (Exception e) {
                    m17033e(search, e);
                }
            } else if (i == 2) {
                for (LinkedNotebook linkedNotebook : getLinkedNotebooks(search, false)) {
                    try {
                        result.m17038e(linkedNotebook, findNotesInLinkedNotebook(search, linkedNotebook));
                    } catch (Exception e2) {
                        m17033e(search, e2);
                    }
                }
            } else if (i == 3) {
                for (LinkedNotebook linkedNotebook2 : getLinkedNotebooks(search, true)) {
                    try {
                        result.m17037d(linkedNotebook2, findNotesInBusinessNotebook(search, linkedNotebook2));
                    } catch (Exception e3) {
                        m17033e(search, e3);
                    }
                }
            }
        }
        return result;
    }

    public Future<Result> executeAsync(@NonNull Search search, @Nullable EvernoteCallback<Result> evernoteCallback) {
        return submitTask(new CallableC4552a(search), evernoteCallback);
    }

    public List<NotesMetadataList> findAllNotes(Search search, EvernoteNoteStoreClient evernoteNoteStoreClient, NoteFilter noteFilter) throws Exception {
        ArrayList arrayList = new ArrayList();
        int m17048i = search.m17048i();
        int m17050k = search.m17050k();
        int i = m17048i - m17050k;
        while (i > 0) {
            try {
                NotesMetadataList findNotesMetadata = evernoteNoteStoreClient.findNotesMetadata(noteFilter, m17050k, m17048i, search.m17052m());
                i = findNotesMetadata.getTotalNotes() - (findNotesMetadata.getStartIndex() + findNotesMetadata.getNotesSize());
                arrayList.add(findNotesMetadata);
            } catch (EDAMNotFoundException | EDAMSystemException | EDAMUserException | TException e) {
                m17033e(search, e);
                i -= search.m17051l();
            }
            m17050k += search.m17051l();
        }
        return arrayList;
    }

    public List<NotesMetadataList> findNotesInBusinessNotebook(Search search, LinkedNotebook linkedNotebook) throws Exception {
        EvernoteBusinessNotebookHelper businessNotebookHelper = this.f21076e.getBusinessNotebookHelper();
        Notebook correspondingNotebook = this.f21076e.getLinkedNotebookHelper(linkedNotebook).getCorrespondingNotebook();
        NoteFilter noteFilter = new NoteFilter(search.m17049j());
        noteFilter.setNotebookGuid(correspondingNotebook.getGuid());
        return findAllNotes(search, businessNotebookHelper.getClient(), noteFilter);
    }

    public List<NotesMetadataList> findNotesInLinkedNotebook(Search search, LinkedNotebook linkedNotebook) throws Exception {
        EvernoteLinkedNotebookHelper linkedNotebookHelper = this.f21076e.getLinkedNotebookHelper(linkedNotebook);
        Notebook correspondingNotebook = linkedNotebookHelper.getCorrespondingNotebook();
        NoteFilter noteFilter = new NoteFilter(search.m17049j());
        noteFilter.setNotebookGuid(correspondingNotebook.getGuid());
        return findAllNotes(search, linkedNotebookHelper.getClient(), noteFilter);
    }

    public List<NotesMetadataList> findPersonalNotes(Search search) throws Exception {
        return findAllNotes(search, this.f21077f, search.m17049j());
    }

    public List<LinkedNotebook> getLinkedNotebooks(Search search, boolean z) throws Exception {
        if (z) {
            if (!search.f21084c.isEmpty()) {
                return search.f21084c;
            }
            try {
                return this.f21076e.getBusinessNotebookHelper().listBusinessNotebooks(this.f21075d);
            } catch (EDAMNotFoundException | EDAMSystemException | EDAMUserException | TException e) {
                this.m17033e(search, e);
                return Collections.emptyList();
            }
        }
        if (!search.f21083b.isEmpty()) {
            return search.f21083b;
        }
        try {
            return this.f21077f.listLinkedNotebooks();
        } catch (EDAMNotFoundException | EDAMSystemException | EDAMUserException | TException e2) {
            this.m17033e(search, e2);
            return Collections.emptyList();
        }
    }
}
