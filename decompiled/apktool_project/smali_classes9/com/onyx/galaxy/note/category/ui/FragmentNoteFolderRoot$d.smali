.class public final Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->x0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$d;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$d;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$d;->e:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance p1, Lcom/onyx/galaxy/note/category/event/ResetMultiOptionMenuEvent;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/category/event/ResetMultiOptionMenuEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$d;->a(Z)V

    return-void
.end method
