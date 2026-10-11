.class public final synthetic Lcom/sunia/HTREnginev2/qbe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/permissionx/guolindev/callback/RequestCallback;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function0;

.field public final synthetic b:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qbe;->a:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/qbe;->b:Landroidx/fragment/app/FragmentActivity;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/qbe;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onResult(ZLjava/util/List;Ljava/util/List;)V
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/qbe;->a:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/qbe;->b:Landroidx/fragment/app/FragmentActivity;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/qbe;->c:Ljava/lang/String;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method
