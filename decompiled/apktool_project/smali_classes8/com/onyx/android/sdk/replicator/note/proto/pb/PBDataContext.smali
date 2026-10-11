.class public final Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008.\u0010/J\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\u001d\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004H\u00c6\u0001J\t\u0010\t\u001a\u00020\u0004H\u00d6\u0001J\t\u0010\u000b\u001a\u00020\nH\u00d6\u0001J\u0013\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0007\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R$\u0010\u001e\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR$\u0010&\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\"\u0010-\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,\u00a8\u00060"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;",
        "",
        "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;",
        "component1",
        "",
        "component2",
        "noteProviderHolder",
        "documentId",
        "copy",
        "toString",
        "",
        "hashCode",
        "other",
        "",
        "equals",
        "a",
        "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;",
        "getNoteProviderHolder",
        "()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;",
        "b",
        "Ljava/lang/String;",
        "getDocumentId",
        "()Ljava/lang/String;",
        "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;",
        "c",
        "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;",
        "getExportNoteArgs",
        "()Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;",
        "setExportNoteArgs",
        "(Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;)V",
        "exportNoteArgs",
        "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;",
        "d",
        "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;",
        "getCopyNoteArgs",
        "()Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;",
        "setCopyNoteArgs",
        "(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)V",
        "copyNoteArgs",
        "e",
        "Z",
        "getPrintLogToFile",
        "()Z",
        "setPrintLogToFile",
        "(Z)V",
        "printLogToFile",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Ljava/lang/String;)V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteProviderHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "documentId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->a:Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->a:Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->b:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->copy(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->a:Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "noteProviderHolder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "documentId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;-><init>(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->a:Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    iget-object v3, p1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->a:Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCopyNoteArgs()Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->d:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;

    return-object p0
.end method

.method public final getDocumentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getExportNoteArgs()Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->c:Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;

    return-object p0
.end method

.method public final getNoteProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->a:Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    return-object p0
.end method

.method public final getPrintLogToFile()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->e:Z

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->a:Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setCopyNoteArgs(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->d:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;

    return-void
.end method

.method public final setExportNoteArgs(Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->c:Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;

    return-void
.end method

.method public final setPrintLogToFile(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->e:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PBDataContext(noteProviderHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->a:Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", documentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
