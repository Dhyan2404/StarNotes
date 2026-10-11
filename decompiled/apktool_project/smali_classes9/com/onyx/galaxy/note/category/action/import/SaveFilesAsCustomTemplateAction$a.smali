.class public final Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$a<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$a;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$a;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$a;->e:Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Iterator;)Lcom/onyx/galaxy/note/category/data/TemplateFileBean;
    .locals 0
    .param p1    # Ljava/util/Iterator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/onyx/galaxy/note/category/data/TemplateFileBean;",
            ">;)",
            "Lcom/onyx/galaxy/note/category/data/TemplateFileBean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Iterator;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$a;->a(Ljava/util/Iterator;)Lcom/onyx/galaxy/note/category/data/TemplateFileBean;

    move-result-object p0

    return-object p0
.end method
