.class public final Lcom/onyx/galaxy/note/category/data/NoteTagRootFilterInfo;
.super Lcom/onyx/galaxy/note/category/data/FilterInfo;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/data/NoteTagRootFilterInfo;",
        "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
        "()V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x6

    const-string v1, "tag_root_id"

    invoke-direct {p0, v0, v1}, Lcom/onyx/galaxy/note/category/data/FilterInfo;-><init>(ILjava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/NoteTagRootFilter;->Companion:Lcom/onyx/galaxy/note/category/data/NoteTagRootFilter$Companion;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/NoteTagRootFilter$Companion;->getTagRootFilterArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->setQueryArgs(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)V

    return-void
.end method
