.class public Lcom/onyx/galaxy/note/category/ui/Hilt_NoteListActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/contextaware/OnContextAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/Hilt_NoteListActivity;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/category/ui/Hilt_NoteListActivity;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/Hilt_NoteListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/Hilt_NoteListActivity$a;->a:Lcom/onyx/galaxy/note/category/ui/Hilt_NoteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextAvailable(Landroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/Hilt_NoteListActivity$a;->a:Lcom/onyx/galaxy/note/category/ui/Hilt_NoteListActivity;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/Hilt_NoteListActivity;->inject()V

    return-void
.end method
