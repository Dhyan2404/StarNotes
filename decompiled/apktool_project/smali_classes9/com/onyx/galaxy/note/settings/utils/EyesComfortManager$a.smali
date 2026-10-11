.class public final Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;->RECOMMEND:Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$a;->b:Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;->getIntensityMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$a;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$a;->c:Ljava/util/Map;

    return-object p0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$a;->a:Z

    return p0
.end method

.method public final c(Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;)F
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$a;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x42480000    # 50.0f

    :goto_0
    return p0
.end method

.method public final d()Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$a;->b:Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;

    return-object p0
.end method

.method public final e(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$a;->c:Ljava/util/Map;

    return-void
.end method

.method public final f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$a;->a:Z

    return-void
.end method

.method public final g(Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$a;->b:Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;

    return-void
.end method
