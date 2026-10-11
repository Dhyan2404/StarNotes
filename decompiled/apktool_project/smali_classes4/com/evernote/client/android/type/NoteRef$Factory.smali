.class public interface abstract Lcom/evernote/client/android/type/NoteRef$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/client/android/type/NoteRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract fromLinked(Lcom/evernote/edam/notestore/NoteMetadata;Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/client/android/type/NoteRef;
.end method

.method public abstract fromPersonal(Lcom/evernote/edam/notestore/NoteMetadata;)Lcom/evernote/client/android/type/NoteRef;
.end method
