package com.evernote.client.android.type;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.evernote.client.android.asyncclient.EvernoteNoteStoreClient;
import com.evernote.edam.error.EDAMNotFoundException;
import com.evernote.edam.error.EDAMSystemException;
import com.evernote.edam.error.EDAMUserException;
import com.evernote.edam.notestore.NoteMetadata;
import com.evernote.edam.type.LinkedNotebook;
import com.evernote.edam.type.Note;
import com.evernote.edam.type.Notebook;
import com.evernote.thrift.TException;
import com.sunia.HTREnginev2.d1k;

/* loaded from: classes4.dex */
public class NoteRef implements Parcelable {
    public static final Parcelable.Creator<NoteRef> CREATOR = new C4571a();
    private final boolean mLinked;
    private final String mNoteGuid;
    private final String mNotebookGuid;
    private final String mTitle;

    /* loaded from: classes4.dex */
    public static class DefaultFactory implements Factory {
        @Override // com.evernote.client.android.type.NoteRef.Factory
        public NoteRef fromLinked(NoteMetadata noteMetadata, LinkedNotebook linkedNotebook) {
            return new NoteRef(noteMetadata.getGuid(), linkedNotebook.getGuid(), noteMetadata.getTitle(), true);
        }

        @Override // com.evernote.client.android.type.NoteRef.Factory
        public NoteRef fromPersonal(NoteMetadata noteMetadata) {
            return new NoteRef(noteMetadata.getGuid(), noteMetadata.getNotebookGuid(), noteMetadata.getTitle(), false);
        }
    }

    /* loaded from: classes4.dex */
    public interface Factory {
        NoteRef fromLinked(NoteMetadata noteMetadata, LinkedNotebook linkedNotebook);

        NoteRef fromPersonal(NoteMetadata noteMetadata);
    }

    /* renamed from: com.evernote.client.android.type.NoteRef$a */
    /* loaded from: classes4.dex */
    public static class C4571a implements Parcelable.Creator<NoteRef> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public NoteRef createFromParcel(Parcel parcel) {
            return new NoteRef(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 1);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public NoteRef[] newArray(int i) {
            return new NoteRef[i];
        }
    }

    public NoteRef(@NonNull String str, @Nullable String str2, @NonNull String str3, boolean z) {
        this.mNoteGuid = str;
        this.mNotebookGuid = str2;
        this.mTitle = str3;
        this.mLinked = z;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @NonNull
    public String getGuid() {
        return this.mNoteGuid;
    }

    public String getNotebookGuid() {
        return this.mNotebookGuid;
    }

    @NonNull
    public String getTitle() {
        return this.mTitle;
    }

    public boolean isLinked() {
        return this.mLinked;
    }

    public LinkedNotebook loadLinkedNotebook() throws EDAMUserException, EDAMSystemException, TException, EDAMNotFoundException {
        EvernoteNoteStoreClient noteStoreClient;
        if (!this.mLinked || (noteStoreClient = d1k.m53574c().getEvernoteClientFactory().getNoteStoreClient()) == null) {
            return null;
        }
        for (LinkedNotebook linkedNotebook : noteStoreClient.listLinkedNotebooks()) {
            if (linkedNotebook.getGuid().equals(this.mNotebookGuid)) {
                return linkedNotebook;
            }
        }
        return null;
    }

    public Note loadNote(boolean z, boolean z2, boolean z3, boolean z4) throws TException, EDAMUserException, EDAMSystemException, EDAMNotFoundException {
        EvernoteNoteStoreClient m53573b = d1k.m53573b(this);
        if (m53573b == null) {
            return null;
        }
        return m53573b.getNote(this.mNoteGuid, z, z2, z3, z4);
    }

    public Note loadNoteFully() throws EDAMUserException, TException, EDAMSystemException, EDAMNotFoundException {
        return loadNote(true, true, true, true);
    }

    public Note loadNotePartial() throws EDAMUserException, TException, EDAMSystemException, EDAMNotFoundException {
        return loadNote(false, false, false, false);
    }

    public Notebook loadNotebook() throws EDAMUserException, EDAMSystemException, TException, EDAMNotFoundException {
        String str = this.mNotebookGuid;
        if (str == null) {
            return null;
        }
        if (this.mLinked) {
            return d1k.m53574c().getEvernoteClientFactory().getLinkedNotebookHelper(d1k.m53572a(str)).getCorrespondingNotebook();
        }
        EvernoteNoteStoreClient m53573b = d1k.m53573b(this);
        if (m53573b == null) {
            return null;
        }
        return m53573b.getNotebook(this.mNotebookGuid);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mNoteGuid);
        parcel.writeString(this.mNotebookGuid);
        parcel.writeString(this.mTitle);
        parcel.writeInt(this.mLinked ? 1 : 0);
    }
}
