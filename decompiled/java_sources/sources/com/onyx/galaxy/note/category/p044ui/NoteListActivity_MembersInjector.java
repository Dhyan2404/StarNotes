package com.onyx.galaxy.note.category.p044ui;

import com.onyx.galaxy.note.update.IAppUpdateDetect;
import dagger.MembersInjector;
import dagger.internal.DaggerGenerated;
import dagger.internal.InjectedFieldSignature;
import dagger.internal.QualifierMetadata;
import javax.inject.Provider;

@DaggerGenerated
@QualifierMetadata
/* loaded from: classes9.dex */
public final class NoteListActivity_MembersInjector implements MembersInjector<NoteListActivity> {

    /* renamed from: e */
    public final Provider<IAppUpdateDetect> f54659e;

    public NoteListActivity_MembersInjector(Provider<IAppUpdateDetect> provider) {
        this.f54659e = provider;
    }

    public static MembersInjector<NoteListActivity> create(Provider<IAppUpdateDetect> provider) {
        return new NoteListActivity_MembersInjector(provider);
    }

    @InjectedFieldSignature("com.onyx.galaxy.note.category.ui.NoteListActivity.appUpdateDetect")
    public static void injectAppUpdateDetect(NoteListActivity noteListActivity, IAppUpdateDetect iAppUpdateDetect) {
        noteListActivity.appUpdateDetect = iAppUpdateDetect;
    }

    @Override // dagger.MembersInjector
    public void injectMembers(NoteListActivity noteListActivity) {
        injectAppUpdateDetect(noteListActivity, this.f54659e.get());
    }
}
