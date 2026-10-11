.class public final Lcom/onyx/galaxy/note/category/action/template/CleanDeprecatedTemplateRecordAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/template/CleanDeprecatedTemplateRecordAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public static final e:Lcom/onyx/galaxy/note/category/action/template/CleanDeprecatedTemplateRecordAction$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/category/action/template/CleanDeprecatedTemplateRecordAction$c<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/category/action/template/CleanDeprecatedTemplateRecordAction$c;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/action/template/CleanDeprecatedTemplateRecordAction$c;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/category/action/template/CleanDeprecatedTemplateRecordAction$c;->e:Lcom/onyx/galaxy/note/category/action/template/CleanDeprecatedTemplateRecordAction$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    const/4 p1, 0x0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getTemplateOption$default(Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;Ljava/lang/String;IILjava/lang/Object;)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/template/CleanDeprecatedTemplateRecordAction$c;->a(Z)Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object p0

    return-object p0
.end method
