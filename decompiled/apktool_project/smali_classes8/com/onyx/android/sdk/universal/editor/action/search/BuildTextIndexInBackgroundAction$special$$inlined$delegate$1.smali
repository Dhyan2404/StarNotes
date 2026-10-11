.class public final Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$special$$inlined$delegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONTEXT:",
        "Ljava/lang/Object;",
        "RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAny.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt$delegate$1\n+ 2 BuildTextIndexInBackgroundAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction\n+ 3 OptionsRepo.kt\ncom/onyx/android/sdk/base/utils/OptionsRepo\n*L\n1#1,98:1\n145#2:99\n12#3,4:100\n*S KotlinDebug\n*F\n+ 1 BuildTextIndexInBackgroundAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction\n*L\n145#1:100,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0004\n\u0002\u0008\u0006\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0004\u0008\u0001\u0010\u0001*\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "PROPERTY",
        "CONTEXT",
        "provideValue",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "com/onyx/android/sdk/base/extension/AnyKt$delegate$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAny.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt$delegate$1\n+ 2 BuildTextIndexInBackgroundAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction\n+ 3 OptionsRepo.kt\ncom/onyx/android/sdk/base/utils/OptionsRepo\n*L\n1#1,98:1\n145#2:99\n12#3,4:100\n*S KotlinDebug\n*F\n+ 1 BuildTextIndexInBackgroundAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction\n*L\n145#1:100,4\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 0
    .param p2    # Lkotlin/reflect/KProperty;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTEXT;",
            "Lkotlin/reflect/KProperty<",
            "*>;)TRESU",
            "LT;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/base/data/DelegatedValueProvider$DefaultImpls;->getValue(Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final provideValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTEXT;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion;

    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->access$getFtsWorkerOptions$cp()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getRepo()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "settings_pause_task"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getRepo()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getRepo()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object p1, p0

    check-cast p1, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
