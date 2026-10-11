.class public final synthetic Lcom/sunia/HTREnginev2/d2g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/settings/ui/adapter/ExportErrorAdapter;

.field public final synthetic f:Lcom/onyx/android/sdk/data/common/data/ErrorCode;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/settings/ui/adapter/ExportErrorAdapter;Lcom/onyx/android/sdk/data/common/data/ErrorCode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/d2g;->e:Lcom/onyx/galaxy/note/settings/ui/adapter/ExportErrorAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/d2g;->f:Lcom/onyx/android/sdk/data/common/data/ErrorCode;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/d2g;->e:Lcom/onyx/galaxy/note/settings/ui/adapter/ExportErrorAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d2g;->f:Lcom/onyx/android/sdk/data/common/data/ErrorCode;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/ExportErrorAdapter;->l(Lcom/onyx/galaxy/note/settings/ui/adapter/ExportErrorAdapter;Lcom/onyx/android/sdk/data/common/data/ErrorCode;Landroid/view/View;)V

    return-void
.end method
