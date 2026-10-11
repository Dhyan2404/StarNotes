package com.evernote.client.android.asyncclient;

import androidx.annotation.NonNull;
import com.evernote.client.android.helper.EvernotePreconditions;
import com.evernote.edam.error.EDAMNotFoundException;
import com.evernote.edam.error.EDAMSystemException;
import com.evernote.edam.error.EDAMUserException;
import com.evernote.edam.notestore.ClientUsageMetrics;
import com.evernote.edam.notestore.NoteCollectionCounts;
import com.evernote.edam.notestore.NoteEmailParameters;
import com.evernote.edam.notestore.NoteFilter;
import com.evernote.edam.notestore.NoteList;
import com.evernote.edam.notestore.NoteStore;
import com.evernote.edam.notestore.NoteVersionId;
import com.evernote.edam.notestore.NotesMetadataList;
import com.evernote.edam.notestore.NotesMetadataResultSpec;
import com.evernote.edam.notestore.RelatedQuery;
import com.evernote.edam.notestore.RelatedResult;
import com.evernote.edam.notestore.RelatedResultSpec;
import com.evernote.edam.notestore.SyncChunk;
import com.evernote.edam.notestore.SyncChunkFilter;
import com.evernote.edam.notestore.SyncState;
import com.evernote.edam.type.LazyMap;
import com.evernote.edam.type.LinkedNotebook;
import com.evernote.edam.type.Note;
import com.evernote.edam.type.Notebook;
import com.evernote.edam.type.Resource;
import com.evernote.edam.type.ResourceAttributes;
import com.evernote.edam.type.SavedSearch;
import com.evernote.edam.type.SharedNotebook;
import com.evernote.edam.type.SharedNotebookRecipientSettings;
import com.evernote.edam.type.Tag;
import com.evernote.edam.userstore.AuthenticationResult;
import com.evernote.thrift.TException;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/* loaded from: classes4.dex */
public class EvernoteNoteStoreClient extends EvernoteAsyncClient {

    /* renamed from: d */
    public final NoteStore.Client f20885d;

    /* renamed from: e */
    public final String f20886e;

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$a */
    /* loaded from: classes4.dex */
    public class CallableC4477a implements Callable<Notebook> {

        /* renamed from: e */
        public final /* synthetic */ Notebook f20887e;

        public CallableC4477a(Notebook notebook) {
            this.f20887e = notebook;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Notebook call() throws Exception {
            return EvernoteNoteStoreClient.this.createNotebook(this.f20887e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$a0 */
    /* loaded from: classes4.dex */
    public class CallableC4478a0 implements Callable<String> {

        /* renamed from: e */
        public final /* synthetic */ String f20889e;

        public CallableC4478a0(String str) {
            this.f20889e = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String call() throws Exception {
            return EvernoteNoteStoreClient.this.getNoteContent(this.f20889e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$a1 */
    /* loaded from: classes4.dex */
    public class CallableC4479a1 implements Callable<Notebook> {

        /* renamed from: e */
        public final /* synthetic */ int f20891e;

        /* renamed from: f */
        public final /* synthetic */ String f20892f;

        public CallableC4479a1(int i, String str) {
            this.f20891e = i;
            this.f20892f = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Notebook call() throws Exception {
            return EvernoteNoteStoreClient.this.getPublicNotebook(this.f20891e, this.f20892f);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$b */
    /* loaded from: classes4.dex */
    public class CallableC4480b implements Callable<Integer> {

        /* renamed from: e */
        public final /* synthetic */ Notebook f20894e;

        public CallableC4480b(Notebook notebook) {
            this.f20894e = notebook;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer call() throws Exception {
            return Integer.valueOf(EvernoteNoteStoreClient.this.updateNotebook(this.f20894e));
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$b0 */
    /* loaded from: classes4.dex */
    public class CallableC4481b0 implements Callable<String> {

        /* renamed from: e */
        public final /* synthetic */ String f20896e;

        /* renamed from: f */
        public final /* synthetic */ boolean f20897f;

        /* renamed from: g */
        public final /* synthetic */ boolean f20898g;

        public CallableC4481b0(String str, boolean z, boolean z2) {
            this.f20896e = str;
            this.f20897f = z;
            this.f20898g = z2;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String call() throws Exception {
            return EvernoteNoteStoreClient.this.getNoteSearchText(this.f20896e, this.f20897f, this.f20898g);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$b1 */
    /* loaded from: classes4.dex */
    public class CallableC4482b1 implements Callable<SharedNotebook> {

        /* renamed from: e */
        public final /* synthetic */ SharedNotebook f20900e;

        public CallableC4482b1(SharedNotebook sharedNotebook) {
            this.f20900e = sharedNotebook;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedNotebook call() throws Exception {
            return EvernoteNoteStoreClient.this.createSharedNotebook(this.f20900e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$c */
    /* loaded from: classes4.dex */
    public class CallableC4483c implements Callable<Integer> {

        /* renamed from: e */
        public final /* synthetic */ String f20902e;

        public CallableC4483c(String str) {
            this.f20902e = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer call() throws Exception {
            return Integer.valueOf(EvernoteNoteStoreClient.this.expungeNotebook(this.f20902e));
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$c0 */
    /* loaded from: classes4.dex */
    public class CallableC4484c0 implements Callable<String> {

        /* renamed from: e */
        public final /* synthetic */ String f20904e;

        public CallableC4484c0(String str) {
            this.f20904e = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String call() throws Exception {
            return EvernoteNoteStoreClient.this.getResourceSearchText(this.f20904e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$c1 */
    /* loaded from: classes4.dex */
    public class CallableC4485c1 implements Callable<SyncState> {

        /* renamed from: e */
        public final /* synthetic */ LinkedNotebook f20906e;

        public CallableC4485c1(LinkedNotebook linkedNotebook) {
            this.f20906e = linkedNotebook;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SyncState call() throws Exception {
            return EvernoteNoteStoreClient.this.getLinkedNotebookSyncState(this.f20906e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$d */
    /* loaded from: classes4.dex */
    public class CallableC4486d implements Callable<List<Tag>> {
        public CallableC4486d() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<Tag> call() throws Exception {
            return EvernoteNoteStoreClient.this.listTags();
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$d0 */
    /* loaded from: classes4.dex */
    public class CallableC4487d0 implements Callable<List<String>> {

        /* renamed from: e */
        public final /* synthetic */ String f20909e;

        public CallableC4487d0(String str) {
            this.f20909e = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<String> call() throws Exception {
            return EvernoteNoteStoreClient.this.getNoteTagNames(this.f20909e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$d1 */
    /* loaded from: classes4.dex */
    public class CallableC4488d1 implements Callable<Integer> {

        /* renamed from: e */
        public final /* synthetic */ SharedNotebook f20911e;

        public CallableC4488d1(SharedNotebook sharedNotebook) {
            this.f20911e = sharedNotebook;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer call() throws Exception {
            return Integer.valueOf(EvernoteNoteStoreClient.this.updateSharedNotebook(this.f20911e));
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$e */
    /* loaded from: classes4.dex */
    public class CallableC4489e implements Callable<List<Tag>> {

        /* renamed from: e */
        public final /* synthetic */ String f20913e;

        public CallableC4489e(String str) {
            this.f20913e = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<Tag> call() throws Exception {
            return EvernoteNoteStoreClient.this.listTagsByNotebook(this.f20913e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$e0 */
    /* loaded from: classes4.dex */
    public class CallableC4490e0 implements Callable<Note> {

        /* renamed from: e */
        public final /* synthetic */ Note f20915e;

        public CallableC4490e0(Note note) {
            this.f20915e = note;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Note call() throws Exception {
            return EvernoteNoteStoreClient.this.createNote(this.f20915e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$e1 */
    /* loaded from: classes4.dex */
    public class CallableC4491e1 implements Callable<Integer> {

        /* renamed from: e */
        public final /* synthetic */ long f20917e;

        /* renamed from: f */
        public final /* synthetic */ SharedNotebookRecipientSettings f20918f;

        public CallableC4491e1(long j, SharedNotebookRecipientSettings sharedNotebookRecipientSettings) {
            this.f20917e = j;
            this.f20918f = sharedNotebookRecipientSettings;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer call() throws Exception {
            return Integer.valueOf(EvernoteNoteStoreClient.this.setSharedNotebookRecipientSettings(this.f20917e, this.f20918f));
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$f */
    /* loaded from: classes4.dex */
    public class CallableC4492f implements Callable<Tag> {

        /* renamed from: e */
        public final /* synthetic */ String f20920e;

        public CallableC4492f(String str) {
            this.f20920e = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Tag call() throws Exception {
            return EvernoteNoteStoreClient.this.getTag(this.f20920e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$f0 */
    /* loaded from: classes4.dex */
    public class CallableC4493f0 implements Callable<Note> {

        /* renamed from: e */
        public final /* synthetic */ Note f20922e;

        public CallableC4493f0(Note note) {
            this.f20922e = note;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Note call() throws Exception {
            return EvernoteNoteStoreClient.this.updateNote(this.f20922e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$f1 */
    /* loaded from: classes4.dex */
    public class CallableC4494f1 implements Callable<Integer> {

        /* renamed from: e */
        public final /* synthetic */ String f20924e;

        /* renamed from: f */
        public final /* synthetic */ String f20925f;

        /* renamed from: g */
        public final /* synthetic */ List f20926g;

        public CallableC4494f1(String str, String str2, List list) {
            this.f20924e = str;
            this.f20925f = str2;
            this.f20926g = list;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer call() throws Exception {
            return Integer.valueOf(EvernoteNoteStoreClient.this.sendMessageToSharedNotebookMembers(this.f20924e, this.f20925f, this.f20926g));
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$g */
    /* loaded from: classes4.dex */
    public class CallableC4495g implements Callable<Tag> {

        /* renamed from: e */
        public final /* synthetic */ Tag f20928e;

        public CallableC4495g(Tag tag) {
            this.f20928e = tag;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Tag call() throws Exception {
            return EvernoteNoteStoreClient.this.createTag(this.f20928e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$g0 */
    /* loaded from: classes4.dex */
    public class CallableC4496g0 implements Callable<SyncChunk> {

        /* renamed from: e */
        public final /* synthetic */ int f20930e;

        /* renamed from: f */
        public final /* synthetic */ int f20931f;

        /* renamed from: g */
        public final /* synthetic */ boolean f20932g;

        public CallableC4496g0(int i, int i2, boolean z) {
            this.f20930e = i;
            this.f20931f = i2;
            this.f20932g = z;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SyncChunk call() throws Exception {
            return EvernoteNoteStoreClient.this.getSyncChunk(this.f20930e, this.f20931f, this.f20932g);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$g1 */
    /* loaded from: classes4.dex */
    public class CallableC4497g1 implements Callable<List<SharedNotebook>> {
        public CallableC4497g1() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<SharedNotebook> call() throws Exception {
            return EvernoteNoteStoreClient.this.listSharedNotebooks();
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$h */
    /* loaded from: classes4.dex */
    public class CallableC4498h implements Callable<Integer> {

        /* renamed from: e */
        public final /* synthetic */ Tag f20935e;

        public CallableC4498h(Tag tag) {
            this.f20935e = tag;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer call() throws Exception {
            return Integer.valueOf(EvernoteNoteStoreClient.this.updateTag(this.f20935e));
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$h0 */
    /* loaded from: classes4.dex */
    public class CallableC4499h0 implements Callable<Integer> {

        /* renamed from: e */
        public final /* synthetic */ String f20937e;

        public CallableC4499h0(String str) {
            this.f20937e = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer call() throws Exception {
            return Integer.valueOf(EvernoteNoteStoreClient.this.deleteNote(this.f20937e));
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$h1 */
    /* loaded from: classes4.dex */
    public class CallableC4500h1 implements Callable<Integer> {

        /* renamed from: e */
        public final /* synthetic */ List f20939e;

        public CallableC4500h1(List list) {
            this.f20939e = list;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer call() throws Exception {
            return Integer.valueOf(EvernoteNoteStoreClient.this.expungeSharedNotebooks(this.f20939e));
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$i */
    /* loaded from: classes4.dex */
    public class CallableC4501i implements Callable<Void> {

        /* renamed from: e */
        public final /* synthetic */ String f20941e;

        public CallableC4501i(String str) {
            this.f20941e = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            EvernoteNoteStoreClient.this.untagAll(this.f20941e);
            return null;
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$i0 */
    /* loaded from: classes4.dex */
    public class CallableC4502i0 implements Callable<Integer> {

        /* renamed from: e */
        public final /* synthetic */ String f20943e;

        public CallableC4502i0(String str) {
            this.f20943e = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer call() throws Exception {
            return Integer.valueOf(EvernoteNoteStoreClient.this.expungeNote(this.f20943e));
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$i1 */
    /* loaded from: classes4.dex */
    public class CallableC4503i1 implements Callable<LinkedNotebook> {

        /* renamed from: e */
        public final /* synthetic */ LinkedNotebook f20945e;

        public CallableC4503i1(LinkedNotebook linkedNotebook) {
            this.f20945e = linkedNotebook;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LinkedNotebook call() throws Exception {
            return EvernoteNoteStoreClient.this.createLinkedNotebook(this.f20945e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$j */
    /* loaded from: classes4.dex */
    public class CallableC4504j implements Callable<Integer> {

        /* renamed from: e */
        public final /* synthetic */ String f20947e;

        public CallableC4504j(String str) {
            this.f20947e = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer call() throws Exception {
            return Integer.valueOf(EvernoteNoteStoreClient.this.expungeTag(this.f20947e));
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$j0 */
    /* loaded from: classes4.dex */
    public class CallableC4505j0 implements Callable<Integer> {

        /* renamed from: e */
        public final /* synthetic */ List f20949e;

        public CallableC4505j0(List list) {
            this.f20949e = list;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer call() throws Exception {
            return Integer.valueOf(EvernoteNoteStoreClient.this.expungeNotes(this.f20949e));
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$j1 */
    /* loaded from: classes4.dex */
    public class CallableC4506j1 implements Callable<Integer> {

        /* renamed from: e */
        public final /* synthetic */ LinkedNotebook f20951e;

        public CallableC4506j1(LinkedNotebook linkedNotebook) {
            this.f20951e = linkedNotebook;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer call() throws Exception {
            return Integer.valueOf(EvernoteNoteStoreClient.this.updateLinkedNotebook(this.f20951e));
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$k */
    /* loaded from: classes4.dex */
    public class CallableC4507k implements Callable<SyncState> {
        public CallableC4507k() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SyncState call() throws Exception {
            return EvernoteNoteStoreClient.this.getSyncState();
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$k0 */
    /* loaded from: classes4.dex */
    public class CallableC4508k0 implements Callable<Integer> {
        public CallableC4508k0() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer call() throws Exception {
            return Integer.valueOf(EvernoteNoteStoreClient.this.expungeInactiveNotes());
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$k1 */
    /* loaded from: classes4.dex */
    public class CallableC4509k1 implements Callable<List<LinkedNotebook>> {
        public CallableC4509k1() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<LinkedNotebook> call() throws Exception {
            return EvernoteNoteStoreClient.this.listLinkedNotebooks();
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$l */
    /* loaded from: classes4.dex */
    public class CallableC4510l implements Callable<List<SavedSearch>> {
        public CallableC4510l() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<SavedSearch> call() throws Exception {
            return EvernoteNoteStoreClient.this.listSearches();
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$l0 */
    /* loaded from: classes4.dex */
    public class CallableC4511l0 implements Callable<Note> {

        /* renamed from: e */
        public final /* synthetic */ String f20957e;

        /* renamed from: f */
        public final /* synthetic */ String f20958f;

        public CallableC4511l0(String str, String str2) {
            this.f20957e = str;
            this.f20958f = str2;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Note call() throws Exception {
            return EvernoteNoteStoreClient.this.copyNote(this.f20957e, this.f20958f);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$l1 */
    /* loaded from: classes4.dex */
    public class CallableC4512l1 implements Callable<Integer> {

        /* renamed from: e */
        public final /* synthetic */ String f20960e;

        public CallableC4512l1(String str) {
            this.f20960e = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer call() throws Exception {
            return Integer.valueOf(EvernoteNoteStoreClient.this.expungeLinkedNotebook(this.f20960e));
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$m */
    /* loaded from: classes4.dex */
    public class CallableC4513m implements Callable<SavedSearch> {

        /* renamed from: e */
        public final /* synthetic */ String f20962e;

        public CallableC4513m(String str) {
            this.f20962e = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SavedSearch call() throws Exception {
            return EvernoteNoteStoreClient.this.getSearch(this.f20962e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$m0 */
    /* loaded from: classes4.dex */
    public class CallableC4514m0 implements Callable<List<NoteVersionId>> {

        /* renamed from: e */
        public final /* synthetic */ String f20964e;

        public CallableC4514m0(String str) {
            this.f20964e = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<NoteVersionId> call() throws Exception {
            return EvernoteNoteStoreClient.this.listNoteVersions(this.f20964e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$m1 */
    /* loaded from: classes4.dex */
    public class CallableC4515m1 implements Callable<AuthenticationResult> {

        /* renamed from: e */
        public final /* synthetic */ String f20966e;

        public CallableC4515m1(String str) {
            this.f20966e = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AuthenticationResult call() throws Exception {
            return EvernoteNoteStoreClient.this.authenticateToSharedNotebook(this.f20966e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$n */
    /* loaded from: classes4.dex */
    public class CallableC4516n implements Callable<SavedSearch> {

        /* renamed from: e */
        public final /* synthetic */ SavedSearch f20968e;

        public CallableC4516n(SavedSearch savedSearch) {
            this.f20968e = savedSearch;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SavedSearch call() throws Exception {
            return EvernoteNoteStoreClient.this.createSearch(this.f20968e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$n0 */
    /* loaded from: classes4.dex */
    public class CallableC4517n0 implements Callable<Note> {

        /* renamed from: e */
        public final /* synthetic */ String f20970e;

        /* renamed from: f */
        public final /* synthetic */ int f20971f;

        /* renamed from: g */
        public final /* synthetic */ boolean f20972g;

        /* renamed from: h */
        public final /* synthetic */ boolean f20973h;

        /* renamed from: i */
        public final /* synthetic */ boolean f20974i;

        public CallableC4517n0(String str, int i, boolean z, boolean z2, boolean z3) {
            this.f20970e = str;
            this.f20971f = i;
            this.f20972g = z;
            this.f20973h = z2;
            this.f20974i = z3;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Note call() throws Exception {
            return EvernoteNoteStoreClient.this.getNoteVersion(this.f20970e, this.f20971f, this.f20972g, this.f20973h, this.f20974i);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$n1 */
    /* loaded from: classes4.dex */
    public class CallableC4518n1 implements Callable<SyncChunk> {

        /* renamed from: e */
        public final /* synthetic */ LinkedNotebook f20976e;

        /* renamed from: f */
        public final /* synthetic */ int f20977f;

        /* renamed from: g */
        public final /* synthetic */ int f20978g;

        /* renamed from: h */
        public final /* synthetic */ boolean f20979h;

        public CallableC4518n1(LinkedNotebook linkedNotebook, int i, int i2, boolean z) {
            this.f20976e = linkedNotebook;
            this.f20977f = i;
            this.f20978g = i2;
            this.f20979h = z;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SyncChunk call() throws Exception {
            return EvernoteNoteStoreClient.this.getLinkedNotebookSyncChunk(this.f20976e, this.f20977f, this.f20978g, this.f20979h);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$o */
    /* loaded from: classes4.dex */
    public class CallableC4519o implements Callable<Integer> {

        /* renamed from: e */
        public final /* synthetic */ SavedSearch f20981e;

        public CallableC4519o(SavedSearch savedSearch) {
            this.f20981e = savedSearch;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer call() throws Exception {
            return Integer.valueOf(EvernoteNoteStoreClient.this.updateSearch(this.f20981e));
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$o0 */
    /* loaded from: classes4.dex */
    public class CallableC4520o0 implements Callable<Resource> {

        /* renamed from: e */
        public final /* synthetic */ String f20983e;

        /* renamed from: f */
        public final /* synthetic */ boolean f20984f;

        /* renamed from: g */
        public final /* synthetic */ boolean f20985g;

        /* renamed from: h */
        public final /* synthetic */ boolean f20986h;

        /* renamed from: i */
        public final /* synthetic */ boolean f20987i;

        public CallableC4520o0(String str, boolean z, boolean z2, boolean z3, boolean z4) {
            this.f20983e = str;
            this.f20984f = z;
            this.f20985g = z2;
            this.f20986h = z3;
            this.f20987i = z4;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Resource call() throws Exception {
            return EvernoteNoteStoreClient.this.getResource(this.f20983e, this.f20984f, this.f20985g, this.f20986h, this.f20987i);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$o1 */
    /* loaded from: classes4.dex */
    public class CallableC4521o1 implements Callable<SharedNotebook> {
        public CallableC4521o1() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedNotebook call() throws Exception {
            return EvernoteNoteStoreClient.this.getSharedNotebookByAuth();
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$p */
    /* loaded from: classes4.dex */
    public class CallableC4522p implements Callable<Integer> {

        /* renamed from: e */
        public final /* synthetic */ String f20990e;

        public CallableC4522p(String str) {
            this.f20990e = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer call() throws Exception {
            return Integer.valueOf(EvernoteNoteStoreClient.this.expungeSearch(this.f20990e));
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$p0 */
    /* loaded from: classes4.dex */
    public class CallableC4523p0 implements Callable<LazyMap> {

        /* renamed from: e */
        public final /* synthetic */ String f20992e;

        public CallableC4523p0(String str) {
            this.f20992e = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LazyMap call() throws Exception {
            return EvernoteNoteStoreClient.this.getResourceApplicationData(this.f20992e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$p1 */
    /* loaded from: classes4.dex */
    public class CallableC4524p1 implements Callable<Void> {

        /* renamed from: e */
        public final /* synthetic */ NoteEmailParameters f20994e;

        public CallableC4524p1(NoteEmailParameters noteEmailParameters) {
            this.f20994e = noteEmailParameters;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            EvernoteNoteStoreClient.this.emailNote(this.f20994e);
            return null;
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$q */
    /* loaded from: classes4.dex */
    public class CallableC4525q implements Callable<NoteList> {

        /* renamed from: e */
        public final /* synthetic */ NoteFilter f20996e;

        /* renamed from: f */
        public final /* synthetic */ int f20997f;

        /* renamed from: g */
        public final /* synthetic */ int f20998g;

        public CallableC4525q(NoteFilter noteFilter, int i, int i2) {
            this.f20996e = noteFilter;
            this.f20997f = i;
            this.f20998g = i2;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public NoteList call() throws Exception {
            return EvernoteNoteStoreClient.this.findNotes(this.f20996e, this.f20997f, this.f20998g);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$q0 */
    /* loaded from: classes4.dex */
    public class CallableC4526q0 implements Callable<String> {

        /* renamed from: e */
        public final /* synthetic */ String f21000e;

        /* renamed from: f */
        public final /* synthetic */ String f21001f;

        public CallableC4526q0(String str, String str2) {
            this.f21000e = str;
            this.f21001f = str2;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String call() throws Exception {
            return EvernoteNoteStoreClient.this.getResourceApplicationDataEntry(this.f21000e, this.f21001f);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$q1 */
    /* loaded from: classes4.dex */
    public class CallableC4527q1 implements Callable<String> {

        /* renamed from: e */
        public final /* synthetic */ String f21003e;

        public CallableC4527q1(String str) {
            this.f21003e = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String call() throws Exception {
            return EvernoteNoteStoreClient.this.shareNote(this.f21003e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$r */
    /* loaded from: classes4.dex */
    public class CallableC4528r implements Callable<Integer> {

        /* renamed from: e */
        public final /* synthetic */ NoteFilter f21005e;

        /* renamed from: f */
        public final /* synthetic */ String f21006f;

        public CallableC4528r(NoteFilter noteFilter, String str) {
            this.f21005e = noteFilter;
            this.f21006f = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer call() throws Exception {
            return Integer.valueOf(EvernoteNoteStoreClient.this.findNoteOffset(this.f21005e, this.f21006f));
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$r0 */
    /* loaded from: classes4.dex */
    public class CallableC4529r0 implements Callable<SyncChunk> {

        /* renamed from: e */
        public final /* synthetic */ int f21008e;

        /* renamed from: f */
        public final /* synthetic */ int f21009f;

        /* renamed from: g */
        public final /* synthetic */ SyncChunkFilter f21010g;

        public CallableC4529r0(int i, int i2, SyncChunkFilter syncChunkFilter) {
            this.f21008e = i;
            this.f21009f = i2;
            this.f21010g = syncChunkFilter;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SyncChunk call() throws Exception {
            return EvernoteNoteStoreClient.this.getFilteredSyncChunk(this.f21008e, this.f21009f, this.f21010g);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$r1 */
    /* loaded from: classes4.dex */
    public class CallableC4530r1 implements Callable<Void> {

        /* renamed from: e */
        public final /* synthetic */ String f21012e;

        public CallableC4530r1(String str) {
            this.f21012e = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            EvernoteNoteStoreClient.this.stopSharingNote(this.f21012e);
            return null;
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$s */
    /* loaded from: classes4.dex */
    public class CallableC4531s implements Callable<NotesMetadataList> {

        /* renamed from: e */
        public final /* synthetic */ NoteFilter f21014e;

        /* renamed from: f */
        public final /* synthetic */ int f21015f;

        /* renamed from: g */
        public final /* synthetic */ int f21016g;

        /* renamed from: h */
        public final /* synthetic */ NotesMetadataResultSpec f21017h;

        public CallableC4531s(NoteFilter noteFilter, int i, int i2, NotesMetadataResultSpec notesMetadataResultSpec) {
            this.f21014e = noteFilter;
            this.f21015f = i;
            this.f21016g = i2;
            this.f21017h = notesMetadataResultSpec;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public NotesMetadataList call() throws Exception {
            return EvernoteNoteStoreClient.this.findNotesMetadata(this.f21014e, this.f21015f, this.f21016g, this.f21017h);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$s0 */
    /* loaded from: classes4.dex */
    public class CallableC4532s0 implements Callable<Integer> {

        /* renamed from: e */
        public final /* synthetic */ String f21019e;

        /* renamed from: f */
        public final /* synthetic */ String f21020f;

        /* renamed from: g */
        public final /* synthetic */ String f21021g;

        public CallableC4532s0(String str, String str2, String str3) {
            this.f21019e = str;
            this.f21020f = str2;
            this.f21021g = str3;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer call() throws Exception {
            return Integer.valueOf(EvernoteNoteStoreClient.this.setResourceApplicationDataEntry(this.f21019e, this.f21020f, this.f21021g));
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$s1 */
    /* loaded from: classes4.dex */
    public class CallableC4533s1 implements Callable<AuthenticationResult> {

        /* renamed from: e */
        public final /* synthetic */ String f21023e;

        /* renamed from: f */
        public final /* synthetic */ String f21024f;

        public CallableC4533s1(String str, String str2) {
            this.f21023e = str;
            this.f21024f = str2;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AuthenticationResult call() throws Exception {
            return EvernoteNoteStoreClient.this.authenticateToSharedNote(this.f21023e, this.f21024f);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$t */
    /* loaded from: classes4.dex */
    public class CallableC4534t implements Callable<NoteCollectionCounts> {

        /* renamed from: e */
        public final /* synthetic */ NoteFilter f21026e;

        /* renamed from: f */
        public final /* synthetic */ boolean f21027f;

        public CallableC4534t(NoteFilter noteFilter, boolean z) {
            this.f21026e = noteFilter;
            this.f21027f = z;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public NoteCollectionCounts call() throws Exception {
            return EvernoteNoteStoreClient.this.findNoteCounts(this.f21026e, this.f21027f);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$t0 */
    /* loaded from: classes4.dex */
    public class CallableC4535t0 implements Callable<Integer> {

        /* renamed from: e */
        public final /* synthetic */ String f21029e;

        /* renamed from: f */
        public final /* synthetic */ String f21030f;

        public CallableC4535t0(String str, String str2) {
            this.f21029e = str;
            this.f21030f = str2;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer call() throws Exception {
            return Integer.valueOf(EvernoteNoteStoreClient.this.unsetResourceApplicationDataEntry(this.f21029e, this.f21030f));
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$t1 */
    /* loaded from: classes4.dex */
    public class CallableC4536t1 implements Callable<RelatedResult> {

        /* renamed from: e */
        public final /* synthetic */ RelatedQuery f21032e;

        /* renamed from: f */
        public final /* synthetic */ RelatedResultSpec f21033f;

        public CallableC4536t1(RelatedQuery relatedQuery, RelatedResultSpec relatedResultSpec) {
            this.f21032e = relatedQuery;
            this.f21033f = relatedResultSpec;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RelatedResult call() throws Exception {
            return EvernoteNoteStoreClient.this.findRelated(this.f21032e, this.f21033f);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$u */
    /* loaded from: classes4.dex */
    public class CallableC4537u implements Callable<Note> {

        /* renamed from: e */
        public final /* synthetic */ String f21035e;

        /* renamed from: f */
        public final /* synthetic */ boolean f21036f;

        /* renamed from: g */
        public final /* synthetic */ boolean f21037g;

        /* renamed from: h */
        public final /* synthetic */ boolean f21038h;

        /* renamed from: i */
        public final /* synthetic */ boolean f21039i;

        public CallableC4537u(String str, boolean z, boolean z2, boolean z3, boolean z4) {
            this.f21035e = str;
            this.f21036f = z;
            this.f21037g = z2;
            this.f21038h = z3;
            this.f21039i = z4;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Note call() throws Exception {
            return EvernoteNoteStoreClient.this.getNote(this.f21035e, this.f21036f, this.f21037g, this.f21038h, this.f21039i);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$u0 */
    /* loaded from: classes4.dex */
    public class CallableC4538u0 implements Callable<Integer> {

        /* renamed from: e */
        public final /* synthetic */ Resource f21041e;

        public CallableC4538u0(Resource resource) {
            this.f21041e = resource;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer call() throws Exception {
            return Integer.valueOf(EvernoteNoteStoreClient.this.updateResource(this.f21041e));
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$u1 */
    /* loaded from: classes4.dex */
    public class CallableC4539u1 implements Callable<List<Notebook>> {
        public CallableC4539u1() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<Notebook> call() throws Exception {
            return EvernoteNoteStoreClient.this.listNotebooks();
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$v */
    /* loaded from: classes4.dex */
    public class CallableC4540v implements Callable<SyncState> {

        /* renamed from: e */
        public final /* synthetic */ ClientUsageMetrics f21044e;

        public CallableC4540v(ClientUsageMetrics clientUsageMetrics) {
            this.f21044e = clientUsageMetrics;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SyncState call() throws Exception {
            return EvernoteNoteStoreClient.this.getSyncStateWithMetrics(this.f21044e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$v0 */
    /* loaded from: classes4.dex */
    public class CallableC4541v0 implements Callable<byte[]> {

        /* renamed from: e */
        public final /* synthetic */ String f21046e;

        public CallableC4541v0(String str) {
            this.f21046e = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public byte[] call() throws Exception {
            return EvernoteNoteStoreClient.this.getResourceData(this.f21046e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$v1 */
    /* loaded from: classes4.dex */
    public class CallableC4542v1 implements Callable<Notebook> {

        /* renamed from: e */
        public final /* synthetic */ String f21048e;

        public CallableC4542v1(String str) {
            this.f21048e = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Notebook call() throws Exception {
            return EvernoteNoteStoreClient.this.getNotebook(this.f21048e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$w */
    /* loaded from: classes4.dex */
    public class CallableC4543w implements Callable<LazyMap> {

        /* renamed from: e */
        public final /* synthetic */ String f21050e;

        public CallableC4543w(String str) {
            this.f21050e = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LazyMap call() throws Exception {
            return EvernoteNoteStoreClient.this.getNoteApplicationData(this.f21050e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$w0 */
    /* loaded from: classes4.dex */
    public class CallableC4544w0 implements Callable<Resource> {

        /* renamed from: e */
        public final /* synthetic */ String f21052e;

        /* renamed from: f */
        public final /* synthetic */ byte[] f21053f;

        /* renamed from: g */
        public final /* synthetic */ boolean f21054g;

        /* renamed from: h */
        public final /* synthetic */ boolean f21055h;

        /* renamed from: i */
        public final /* synthetic */ boolean f21056i;

        public CallableC4544w0(String str, byte[] bArr, boolean z, boolean z2, boolean z3) {
            this.f21052e = str;
            this.f21053f = bArr;
            this.f21054g = z;
            this.f21055h = z2;
            this.f21056i = z3;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Resource call() throws Exception {
            return EvernoteNoteStoreClient.this.getResourceByHash(this.f21052e, this.f21053f, this.f21054g, this.f21055h, this.f21056i);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$w1 */
    /* loaded from: classes4.dex */
    public class CallableC4545w1 implements Callable<Notebook> {
        public CallableC4545w1() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Notebook call() throws Exception {
            return EvernoteNoteStoreClient.this.getDefaultNotebook();
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$x */
    /* loaded from: classes4.dex */
    public class CallableC4546x implements Callable<String> {

        /* renamed from: e */
        public final /* synthetic */ String f21059e;

        /* renamed from: f */
        public final /* synthetic */ String f21060f;

        public CallableC4546x(String str, String str2) {
            this.f21059e = str;
            this.f21060f = str2;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String call() throws Exception {
            return EvernoteNoteStoreClient.this.getNoteApplicationDataEntry(this.f21059e, this.f21060f);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$x0 */
    /* loaded from: classes4.dex */
    public class CallableC4547x0 implements Callable<byte[]> {

        /* renamed from: e */
        public final /* synthetic */ String f21062e;

        public CallableC4547x0(String str) {
            this.f21062e = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public byte[] call() throws Exception {
            return EvernoteNoteStoreClient.this.getResourceRecognition(this.f21062e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$y */
    /* loaded from: classes4.dex */
    public class CallableC4548y implements Callable<Integer> {

        /* renamed from: e */
        public final /* synthetic */ String f21064e;

        /* renamed from: f */
        public final /* synthetic */ String f21065f;

        /* renamed from: g */
        public final /* synthetic */ String f21066g;

        public CallableC4548y(String str, String str2, String str3) {
            this.f21064e = str;
            this.f21065f = str2;
            this.f21066g = str3;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer call() throws Exception {
            return Integer.valueOf(EvernoteNoteStoreClient.this.setNoteApplicationDataEntry(this.f21064e, this.f21065f, this.f21066g));
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$y0 */
    /* loaded from: classes4.dex */
    public class CallableC4549y0 implements Callable<byte[]> {

        /* renamed from: e */
        public final /* synthetic */ String f21068e;

        public CallableC4549y0(String str) {
            this.f21068e = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public byte[] call() throws Exception {
            return EvernoteNoteStoreClient.this.getResourceAlternateData(this.f21068e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$z */
    /* loaded from: classes4.dex */
    public class CallableC4550z implements Callable<Integer> {

        /* renamed from: e */
        public final /* synthetic */ String f21070e;

        /* renamed from: f */
        public final /* synthetic */ String f21071f;

        public CallableC4550z(String str, String str2) {
            this.f21070e = str;
            this.f21071f = str2;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer call() throws Exception {
            return Integer.valueOf(EvernoteNoteStoreClient.this.unsetNoteApplicationDataEntry(this.f21070e, this.f21071f));
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteNoteStoreClient$z0 */
    /* loaded from: classes4.dex */
    public class CallableC4551z0 implements Callable<ResourceAttributes> {

        /* renamed from: e */
        public final /* synthetic */ String f21073e;

        public CallableC4551z0(String str) {
            this.f21073e = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ResourceAttributes call() throws Exception {
            return EvernoteNoteStoreClient.this.getResourceAttributes(this.f21073e);
        }
    }

    public EvernoteNoteStoreClient(@NonNull NoteStore.Client client, @NonNull String str, @NonNull ExecutorService executorService) {
        super(executorService);
        this.f20885d = (NoteStore.Client) EvernotePreconditions.checkNotNull(client);
        this.f20886e = (String) EvernotePreconditions.checkNotEmpty(str);
    }

    public AuthenticationResult authenticateToSharedNote(String str, String str2) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        return this.f20885d.authenticateToSharedNote(str, str2, this.f20886e);
    }

    public Future<AuthenticationResult> authenticateToSharedNoteAsync(String str, String str2, EvernoteCallback<AuthenticationResult> evernoteCallback) {
        return submitTask(new CallableC4533s1(str, str2), evernoteCallback);
    }

    public AuthenticationResult authenticateToSharedNotebook(String str) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        return this.f20885d.authenticateToSharedNotebook(str, this.f20886e);
    }

    public Future<AuthenticationResult> authenticateToSharedNotebookAsync(String str, EvernoteCallback<AuthenticationResult> evernoteCallback) {
        return submitTask(new CallableC4515m1(str), evernoteCallback);
    }

    public Note copyNote(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.copyNote(this.f20886e, str, str2);
    }

    public Future<Note> copyNoteAsync(String str, String str2, EvernoteCallback<Note> evernoteCallback) {
        return submitTask(new CallableC4511l0(str, str2), evernoteCallback);
    }

    public LinkedNotebook createLinkedNotebook(LinkedNotebook linkedNotebook) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        return this.f20885d.createLinkedNotebook(this.f20886e, linkedNotebook);
    }

    public Future<LinkedNotebook> createLinkedNotebookAsync(LinkedNotebook linkedNotebook, EvernoteCallback<LinkedNotebook> evernoteCallback) {
        return submitTask(new CallableC4503i1(linkedNotebook), evernoteCallback);
    }

    public Note createNote(Note note) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.createNote(this.f20886e, note);
    }

    public Future<Note> createNoteAsync(Note note, EvernoteCallback<Note> evernoteCallback) {
        return submitTask(new CallableC4490e0(note), evernoteCallback);
    }

    public Notebook createNotebook(Notebook notebook) throws EDAMUserException, EDAMSystemException, TException {
        return this.f20885d.createNotebook(this.f20886e, notebook);
    }

    public Future<Notebook> createNotebookAsync(Notebook notebook, EvernoteCallback<Notebook> evernoteCallback) {
        return submitTask(new CallableC4477a(notebook), evernoteCallback);
    }

    public SavedSearch createSearch(SavedSearch savedSearch) throws EDAMUserException, EDAMSystemException, TException {
        return this.f20885d.createSearch(this.f20886e, savedSearch);
    }

    public Future<SavedSearch> createSearchAsync(SavedSearch savedSearch, EvernoteCallback<SavedSearch> evernoteCallback) {
        return submitTask(new CallableC4516n(savedSearch), evernoteCallback);
    }

    public SharedNotebook createSharedNotebook(SharedNotebook sharedNotebook) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        return this.f20885d.createSharedNotebook(this.f20886e, sharedNotebook);
    }

    public Future<SharedNotebook> createSharedNotebookAsync(SharedNotebook sharedNotebook, EvernoteCallback<SharedNotebook> evernoteCallback) {
        return submitTask(new CallableC4482b1(sharedNotebook), evernoteCallback);
    }

    public Tag createTag(Tag tag) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.createTag(this.f20886e, tag);
    }

    public Future<Tag> createTagAsync(Tag tag, EvernoteCallback<Tag> evernoteCallback) {
        return submitTask(new CallableC4495g(tag), evernoteCallback);
    }

    public int deleteNote(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.deleteNote(this.f20886e, str);
    }

    public Future<Integer> deleteNoteAsync(String str, EvernoteCallback<Integer> evernoteCallback) {
        return submitTask(new CallableC4499h0(str), evernoteCallback);
    }

    public void emailNote(NoteEmailParameters noteEmailParameters) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        this.f20885d.emailNote(this.f20886e, noteEmailParameters);
    }

    public Future<Void> emailNoteAsync(NoteEmailParameters noteEmailParameters, EvernoteCallback<Void> evernoteCallback) {
        return submitTask(new CallableC4524p1(noteEmailParameters), evernoteCallback);
    }

    public int expungeInactiveNotes() throws EDAMUserException, EDAMSystemException, TException {
        return this.f20885d.expungeInactiveNotes(this.f20886e);
    }

    public Future<Integer> expungeInactiveNotesAsync(EvernoteCallback<Integer> evernoteCallback) {
        return submitTask(new CallableC4508k0(), evernoteCallback);
    }

    public int expungeLinkedNotebook(String str) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        return this.f20885d.expungeLinkedNotebook(this.f20886e, str);
    }

    public Future<Integer> expungeLinkedNotebookAsync(String str, EvernoteCallback<Integer> evernoteCallback) {
        return submitTask(new CallableC4512l1(str), evernoteCallback);
    }

    public int expungeNote(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.expungeNote(this.f20886e, str);
    }

    public Future<Integer> expungeNoteAsync(String str, EvernoteCallback<Integer> evernoteCallback) {
        return submitTask(new CallableC4502i0(str), evernoteCallback);
    }

    public int expungeNotebook(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.expungeNotebook(this.f20886e, str);
    }

    public Future<Integer> expungeNotebookAsync(String str, EvernoteCallback<Integer> evernoteCallback) {
        return submitTask(new CallableC4483c(str), evernoteCallback);
    }

    public int expungeNotes(List<String> list) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.expungeNotes(this.f20886e, list);
    }

    public Future<Integer> expungeNotesAsync(List<String> list, EvernoteCallback<Integer> evernoteCallback) {
        return submitTask(new CallableC4505j0(list), evernoteCallback);
    }

    public int expungeSearch(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.expungeSearch(this.f20886e, str);
    }

    public Future<Integer> expungeSearchAsync(String str, EvernoteCallback<Integer> evernoteCallback) {
        return submitTask(new CallableC4522p(str), evernoteCallback);
    }

    public int expungeSharedNotebooks(List<Long> list) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        return this.f20885d.expungeSharedNotebooks(this.f20886e, list);
    }

    public Future<Integer> expungeSharedNotebooksAsync(List<Long> list, EvernoteCallback<Integer> evernoteCallback) {
        return submitTask(new CallableC4500h1(list), evernoteCallback);
    }

    public int expungeTag(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.expungeTag(this.f20886e, str);
    }

    public Future<Integer> expungeTagAsync(String str, EvernoteCallback<Integer> evernoteCallback) {
        return submitTask(new CallableC4504j(str), evernoteCallback);
    }

    public NoteCollectionCounts findNoteCounts(NoteFilter noteFilter, boolean z) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.findNoteCounts(this.f20886e, noteFilter, z);
    }

    public Future<NoteCollectionCounts> findNoteCountsAsync(NoteFilter noteFilter, boolean z, EvernoteCallback<NoteCollectionCounts> evernoteCallback) {
        return submitTask(new CallableC4534t(noteFilter, z), evernoteCallback);
    }

    public int findNoteOffset(NoteFilter noteFilter, String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.findNoteOffset(this.f20886e, noteFilter, str);
    }

    public Future<Integer> findNoteOffsetAsync(NoteFilter noteFilter, String str, EvernoteCallback<Integer> evernoteCallback) {
        return submitTask(new CallableC4528r(noteFilter, str), evernoteCallback);
    }

    public NoteList findNotes(NoteFilter noteFilter, int i, int i2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.findNotes(this.f20886e, noteFilter, i, i2);
    }

    public Future<NoteList> findNotesAsync(NoteFilter noteFilter, int i, int i2, EvernoteCallback<NoteList> evernoteCallback) {
        return submitTask(new CallableC4525q(noteFilter, i, i2), evernoteCallback);
    }

    public NotesMetadataList findNotesMetadata(NoteFilter noteFilter, int i, int i2, NotesMetadataResultSpec notesMetadataResultSpec) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.findNotesMetadata(this.f20886e, noteFilter, i, i2, notesMetadataResultSpec);
    }

    public Future<NotesMetadataList> findNotesMetadataAsync(NoteFilter noteFilter, int i, int i2, NotesMetadataResultSpec notesMetadataResultSpec, EvernoteCallback<NotesMetadataList> evernoteCallback) {
        return submitTask(new CallableC4531s(noteFilter, i, i2, notesMetadataResultSpec), evernoteCallback);
    }

    public RelatedResult findRelated(RelatedQuery relatedQuery, RelatedResultSpec relatedResultSpec) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.findRelated(this.f20886e, relatedQuery, relatedResultSpec);
    }

    public Future<RelatedResult> findRelatedAsync(RelatedQuery relatedQuery, RelatedResultSpec relatedResultSpec, EvernoteCallback<RelatedResult> evernoteCallback) {
        return submitTask(new CallableC4536t1(relatedQuery, relatedResultSpec), evernoteCallback);
    }

    public Notebook getDefaultNotebook() throws EDAMUserException, EDAMSystemException, TException {
        return this.f20885d.getDefaultNotebook(this.f20886e);
    }

    public Future<Notebook> getDefaultNotebookAsync(EvernoteCallback<Notebook> evernoteCallback) {
        return submitTask(new CallableC4545w1(), evernoteCallback);
    }

    public SyncChunk getFilteredSyncChunk(int i, int i2, SyncChunkFilter syncChunkFilter) throws EDAMUserException, EDAMSystemException, TException {
        return this.f20885d.getFilteredSyncChunk(this.f20886e, i, i2, syncChunkFilter);
    }

    public Future<SyncChunk> getFilteredSyncChunkAsync(int i, int i2, SyncChunkFilter syncChunkFilter, EvernoteCallback<SyncChunk> evernoteCallback) {
        return submitTask(new CallableC4529r0(i, i2, syncChunkFilter), evernoteCallback);
    }

    public SyncChunk getLinkedNotebookSyncChunk(LinkedNotebook linkedNotebook, int i, int i2, boolean z) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.getLinkedNotebookSyncChunk(this.f20886e, linkedNotebook, i, i2, z);
    }

    public Future<SyncChunk> getLinkedNotebookSyncChunkAsync(LinkedNotebook linkedNotebook, int i, int i2, boolean z, EvernoteCallback<SyncChunk> evernoteCallback) {
        return submitTask(new CallableC4518n1(linkedNotebook, i, i2, z), evernoteCallback);
    }

    public SyncState getLinkedNotebookSyncState(LinkedNotebook linkedNotebook) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.getLinkedNotebookSyncState(this.f20886e, linkedNotebook);
    }

    public Future<SyncState> getLinkedNotebookSyncStateAsync(LinkedNotebook linkedNotebook, EvernoteCallback<SyncState> evernoteCallback) {
        return submitTask(new CallableC4485c1(linkedNotebook), evernoteCallback);
    }

    public Note getNote(String str, boolean z, boolean z2, boolean z3, boolean z4) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.getNote(this.f20886e, str, z, z2, z3, z4);
    }

    public LazyMap getNoteApplicationData(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.getNoteApplicationData(this.f20886e, str);
    }

    public Future<LazyMap> getNoteApplicationDataAsync(String str, EvernoteCallback<LazyMap> evernoteCallback) {
        return submitTask(new CallableC4543w(str), evernoteCallback);
    }

    public String getNoteApplicationDataEntry(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.getNoteApplicationDataEntry(this.f20886e, str, str2);
    }

    public Future<String> getNoteApplicationDataEntryAsync(String str, String str2, EvernoteCallback<String> evernoteCallback) {
        return submitTask(new CallableC4546x(str, str2), evernoteCallback);
    }

    public Future<Note> getNoteAsync(String str, boolean z, boolean z2, boolean z3, boolean z4, EvernoteCallback<Note> evernoteCallback) {
        return submitTask(new CallableC4537u(str, z, z2, z3, z4), evernoteCallback);
    }

    public String getNoteContent(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.getNoteContent(this.f20886e, str);
    }

    public Future<String> getNoteContentAsync(String str, EvernoteCallback<String> evernoteCallback) {
        return submitTask(new CallableC4478a0(str), evernoteCallback);
    }

    public String getNoteSearchText(String str, boolean z, boolean z2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.getNoteSearchText(this.f20886e, str, z, z2);
    }

    public Future<String> getNoteSearchTextAsync(String str, boolean z, boolean z2, EvernoteCallback<String> evernoteCallback) {
        return submitTask(new CallableC4481b0(str, z, z2), evernoteCallback);
    }

    public List<String> getNoteTagNames(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.getNoteTagNames(this.f20886e, str);
    }

    public Future<List<String>> getNoteTagNamesAsync(String str, EvernoteCallback<List<String>> evernoteCallback) {
        return submitTask(new CallableC4487d0(str), evernoteCallback);
    }

    public Note getNoteVersion(String str, int i, boolean z, boolean z2, boolean z3) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.getNoteVersion(this.f20886e, str, i, z, z2, z3);
    }

    public Future<Note> getNoteVersionAsync(String str, int i, boolean z, boolean z2, boolean z3, EvernoteCallback<Note> evernoteCallback) {
        return submitTask(new CallableC4517n0(str, i, z, z2, z3), evernoteCallback);
    }

    public Notebook getNotebook(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.getNotebook(this.f20886e, str);
    }

    public Future<Notebook> getNotebookAsync(String str, EvernoteCallback<Notebook> evernoteCallback) {
        return submitTask(new CallableC4542v1(str), evernoteCallback);
    }

    public Notebook getPublicNotebook(int i, String str) throws EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.getPublicNotebook(i, str);
    }

    public Future<Notebook> getPublicNotebookAsync(int i, String str, EvernoteCallback<Notebook> evernoteCallback) {
        return submitTask(new CallableC4479a1(i, str), evernoteCallback);
    }

    public Resource getResource(String str, boolean z, boolean z2, boolean z3, boolean z4) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.getResource(this.f20886e, str, z, z2, z3, z4);
    }

    public byte[] getResourceAlternateData(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.getResourceAlternateData(this.f20886e, str);
    }

    public Future<byte[]> getResourceAlternateDataAsync(String str, EvernoteCallback<byte[]> evernoteCallback) {
        return submitTask(new CallableC4549y0(str), evernoteCallback);
    }

    public LazyMap getResourceApplicationData(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.getResourceApplicationData(this.f20886e, str);
    }

    public Future<LazyMap> getResourceApplicationDataAsync(String str, EvernoteCallback<LazyMap> evernoteCallback) {
        return submitTask(new CallableC4523p0(str), evernoteCallback);
    }

    public String getResourceApplicationDataEntry(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.getResourceApplicationDataEntry(this.f20886e, str, str2);
    }

    public Future<String> getResourceApplicationDataEntryAsync(String str, String str2, EvernoteCallback<String> evernoteCallback) {
        return submitTask(new CallableC4526q0(str, str2), evernoteCallback);
    }

    public Future<Resource> getResourceAsync(String str, boolean z, boolean z2, boolean z3, boolean z4, EvernoteCallback<Resource> evernoteCallback) {
        return submitTask(new CallableC4520o0(str, z, z2, z3, z4), evernoteCallback);
    }

    public ResourceAttributes getResourceAttributes(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.getResourceAttributes(this.f20886e, str);
    }

    public Future<ResourceAttributes> getResourceAttributesAsync(String str, EvernoteCallback<ResourceAttributes> evernoteCallback) {
        return submitTask(new CallableC4551z0(str), evernoteCallback);
    }

    public Resource getResourceByHash(String str, byte[] bArr, boolean z, boolean z2, boolean z3) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.getResourceByHash(this.f20886e, str, bArr, z, z2, z3);
    }

    public Future<Resource> getResourceByHashAsync(String str, byte[] bArr, boolean z, boolean z2, boolean z3, EvernoteCallback<Resource> evernoteCallback) {
        return submitTask(new CallableC4544w0(str, bArr, z, z2, z3), evernoteCallback);
    }

    public byte[] getResourceData(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.getResourceData(this.f20886e, str);
    }

    public Future<byte[]> getResourceDataAsync(String str, EvernoteCallback<byte[]> evernoteCallback) {
        return submitTask(new CallableC4541v0(str), evernoteCallback);
    }

    public byte[] getResourceRecognition(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.getResourceRecognition(this.f20886e, str);
    }

    public Future<byte[]> getResourceRecognitionAsync(String str, EvernoteCallback<byte[]> evernoteCallback) {
        return submitTask(new CallableC4547x0(str), evernoteCallback);
    }

    public String getResourceSearchText(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.getResourceSearchText(this.f20886e, str);
    }

    public Future<String> getResourceSearchTextAsync(String str, EvernoteCallback<String> evernoteCallback) {
        return submitTask(new CallableC4484c0(str), evernoteCallback);
    }

    public SavedSearch getSearch(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.getSearch(this.f20886e, str);
    }

    public Future<SavedSearch> getSearchAsync(String str, EvernoteCallback<SavedSearch> evernoteCallback) {
        return submitTask(new CallableC4513m(str), evernoteCallback);
    }

    public SharedNotebook getSharedNotebookByAuth() throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        return this.f20885d.getSharedNotebookByAuth(this.f20886e);
    }

    public Future<SharedNotebook> getSharedNotebookByAuthAsync(EvernoteCallback<SharedNotebook> evernoteCallback) {
        return submitTask(new CallableC4521o1(), evernoteCallback);
    }

    public SyncChunk getSyncChunk(int i, int i2, boolean z) throws EDAMUserException, EDAMSystemException, TException {
        return this.f20885d.getSyncChunk(this.f20886e, i, i2, z);
    }

    public Future<SyncChunk> getSyncChunkAsync(int i, int i2, boolean z, EvernoteCallback<SyncChunk> evernoteCallback) {
        return submitTask(new CallableC4496g0(i, i2, z), evernoteCallback);
    }

    public SyncState getSyncState() throws EDAMUserException, EDAMSystemException, TException {
        return this.f20885d.getSyncState(this.f20886e);
    }

    public Future<SyncState> getSyncStateAsync(EvernoteCallback<SyncState> evernoteCallback) {
        return submitTask(new CallableC4507k(), evernoteCallback);
    }

    public SyncState getSyncStateWithMetrics(ClientUsageMetrics clientUsageMetrics) throws EDAMUserException, EDAMSystemException, TException {
        return this.f20885d.getSyncStateWithMetrics(this.f20886e, clientUsageMetrics);
    }

    public Future<SyncState> getSyncStateWithMetricsAsync(ClientUsageMetrics clientUsageMetrics, EvernoteCallback<SyncState> evernoteCallback) {
        return submitTask(new CallableC4540v(clientUsageMetrics), evernoteCallback);
    }

    public Tag getTag(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.getTag(this.f20886e, str);
    }

    public Future<Tag> getTagAsync(String str, EvernoteCallback<Tag> evernoteCallback) {
        return submitTask(new CallableC4492f(str), evernoteCallback);
    }

    public List<LinkedNotebook> listLinkedNotebooks() throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        return this.f20885d.listLinkedNotebooks(this.f20886e);
    }

    public Future<List<LinkedNotebook>> listLinkedNotebooksAsync(EvernoteCallback<List<LinkedNotebook>> evernoteCallback) {
        return submitTask(new CallableC4509k1(), evernoteCallback);
    }

    public List<NoteVersionId> listNoteVersions(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.listNoteVersions(this.f20886e, str);
    }

    public Future<List<NoteVersionId>> listNoteVersionsAsync(String str, EvernoteCallback<List<NoteVersionId>> evernoteCallback) {
        return submitTask(new CallableC4514m0(str), evernoteCallback);
    }

    public List<Notebook> listNotebooks() throws EDAMUserException, EDAMSystemException, TException {
        return this.f20885d.listNotebooks(this.f20886e);
    }

    public Future<List<Notebook>> listNotebooksAsync(EvernoteCallback<List<Notebook>> evernoteCallback) {
        return submitTask(new CallableC4539u1(), evernoteCallback);
    }

    public List<SavedSearch> listSearches() throws EDAMUserException, EDAMSystemException, TException {
        return this.f20885d.listSearches(this.f20886e);
    }

    public Future<List<SavedSearch>> listSearchesAsync(EvernoteCallback<List<SavedSearch>> evernoteCallback) {
        return submitTask(new CallableC4510l(), evernoteCallback);
    }

    public List<SharedNotebook> listSharedNotebooks() throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        return this.f20885d.listSharedNotebooks(this.f20886e);
    }

    public Future<List<SharedNotebook>> listSharedNotebooksAsync(EvernoteCallback<List<SharedNotebook>> evernoteCallback) {
        return submitTask(new CallableC4497g1(), evernoteCallback);
    }

    public List<Tag> listTags() throws EDAMUserException, EDAMSystemException, TException {
        return this.f20885d.listTags(this.f20886e);
    }

    public Future<List<Tag>> listTagsAsync(EvernoteCallback<List<Tag>> evernoteCallback) {
        return submitTask(new CallableC4486d(), evernoteCallback);
    }

    public List<Tag> listTagsByNotebook(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.listTagsByNotebook(this.f20886e, str);
    }

    public Future<List<Tag>> listTagsByNotebookAsync(String str, EvernoteCallback<List<Tag>> evernoteCallback) {
        return submitTask(new CallableC4489e(str), evernoteCallback);
    }

    public int sendMessageToSharedNotebookMembers(String str, String str2, List<String> list) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        return this.f20885d.sendMessageToSharedNotebookMembers(this.f20886e, str, str2, list);
    }

    public Future<Integer> sendMessageToSharedNotebookMembersAsync(String str, String str2, List<String> list, EvernoteCallback<Integer> evernoteCallback) {
        return submitTask(new CallableC4494f1(str, str2, list), evernoteCallback);
    }

    public int setNoteApplicationDataEntry(String str, String str2, String str3) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.setNoteApplicationDataEntry(this.f20886e, str, str2, str3);
    }

    public Future<Integer> setNoteApplicationDataEntryAsync(String str, String str2, String str3, EvernoteCallback<Integer> evernoteCallback) {
        return submitTask(new CallableC4548y(str, str2, str3), evernoteCallback);
    }

    public int setResourceApplicationDataEntry(String str, String str2, String str3) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.setResourceApplicationDataEntry(this.f20886e, str, str2, str3);
    }

    public Future<Integer> setResourceApplicationDataEntryAsync(String str, String str2, String str3, EvernoteCallback<Integer> evernoteCallback) {
        return submitTask(new CallableC4532s0(str, str2, str3), evernoteCallback);
    }

    public int setSharedNotebookRecipientSettings(long j, SharedNotebookRecipientSettings sharedNotebookRecipientSettings) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        return this.f20885d.setSharedNotebookRecipientSettings(this.f20886e, j, sharedNotebookRecipientSettings);
    }

    public Future<Integer> setSharedNotebookRecipientSettingsAsync(long j, SharedNotebookRecipientSettings sharedNotebookRecipientSettings, EvernoteCallback<Integer> evernoteCallback) {
        return submitTask(new CallableC4491e1(j, sharedNotebookRecipientSettings), evernoteCallback);
    }

    public String shareNote(String str) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        return this.f20885d.shareNote(this.f20886e, str);
    }

    public Future<String> shareNoteAsync(String str, EvernoteCallback<String> evernoteCallback) {
        return submitTask(new CallableC4527q1(str), evernoteCallback);
    }

    public void stopSharingNote(String str) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        this.f20885d.stopSharingNote(this.f20886e, str);
    }

    public Future<Void> stopSharingNoteAsync(String str, EvernoteCallback<Void> evernoteCallback) {
        return submitTask(new CallableC4530r1(str), evernoteCallback);
    }

    public int unsetNoteApplicationDataEntry(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.unsetNoteApplicationDataEntry(this.f20886e, str, str2);
    }

    public Future<Integer> unsetNoteApplicationDataEntryAsync(String str, String str2, EvernoteCallback<Integer> evernoteCallback) {
        return submitTask(new CallableC4550z(str, str2), evernoteCallback);
    }

    public int unsetResourceApplicationDataEntry(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.unsetResourceApplicationDataEntry(this.f20886e, str, str2);
    }

    public Future<Integer> unsetResourceApplicationDataEntryAsync(String str, String str2, EvernoteCallback<Integer> evernoteCallback) {
        return submitTask(new CallableC4535t0(str, str2), evernoteCallback);
    }

    public void untagAll(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        this.f20885d.untagAll(this.f20886e, str);
    }

    public Future<Void> untagAllAsync(String str, EvernoteCallback<Void> evernoteCallback) {
        return submitTask(new CallableC4501i(str), evernoteCallback);
    }

    public int updateLinkedNotebook(LinkedNotebook linkedNotebook) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        return this.f20885d.updateLinkedNotebook(this.f20886e, linkedNotebook);
    }

    public Future<Integer> updateLinkedNotebookAsync(LinkedNotebook linkedNotebook, EvernoteCallback<Integer> evernoteCallback) {
        return submitTask(new CallableC4506j1(linkedNotebook), evernoteCallback);
    }

    public Note updateNote(Note note) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.updateNote(this.f20886e, note);
    }

    public Future<Note> updateNoteAsync(Note note, EvernoteCallback<Note> evernoteCallback) {
        return submitTask(new CallableC4493f0(note), evernoteCallback);
    }

    public int updateNotebook(Notebook notebook) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.updateNotebook(this.f20886e, notebook);
    }

    public Future<Integer> updateNotebookAsync(Notebook notebook, EvernoteCallback<Integer> evernoteCallback) {
        return submitTask(new CallableC4480b(notebook), evernoteCallback);
    }

    public int updateResource(Resource resource) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.updateResource(this.f20886e, resource);
    }

    public Future<Integer> updateResourceAsync(Resource resource, EvernoteCallback<Integer> evernoteCallback) {
        return submitTask(new CallableC4538u0(resource), evernoteCallback);
    }

    public int updateSearch(SavedSearch savedSearch) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.updateSearch(this.f20886e, savedSearch);
    }

    public Future<Integer> updateSearchAsync(SavedSearch savedSearch, EvernoteCallback<Integer> evernoteCallback) {
        return submitTask(new CallableC4519o(savedSearch), evernoteCallback);
    }

    public int updateSharedNotebook(SharedNotebook sharedNotebook) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        return this.f20885d.updateSharedNotebook(this.f20886e, sharedNotebook);
    }

    public Future<Integer> updateSharedNotebookAsync(SharedNotebook sharedNotebook, EvernoteCallback<Integer> evernoteCallback) {
        return submitTask(new CallableC4488d1(sharedNotebook), evernoteCallback);
    }

    public int updateTag(Tag tag) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return this.f20885d.updateTag(this.f20886e, tag);
    }

    public Future<Integer> updateTagAsync(Tag tag, EvernoteCallback<Integer> evernoteCallback) {
        return submitTask(new CallableC4498h(tag), evernoteCallback);
    }
}
