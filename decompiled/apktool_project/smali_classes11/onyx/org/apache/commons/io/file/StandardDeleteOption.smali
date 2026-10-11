.class public final enum Lonyx/org/apache/commons/io/file/StandardDeleteOption;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/file/DeleteOption;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lonyx/org/apache/commons/io/file/StandardDeleteOption;",
        ">;",
        "Lonyx/org/apache/commons/io/file/DeleteOption;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lonyx/org/apache/commons/io/file/StandardDeleteOption;

.field public static final enum OVERRIDE_READ_ONLY:Lonyx/org/apache/commons/io/file/StandardDeleteOption;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lonyx/org/apache/commons/io/file/StandardDeleteOption;

    const-string v1, "OVERRIDE_READ_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lonyx/org/apache/commons/io/file/StandardDeleteOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonyx/org/apache/commons/io/file/StandardDeleteOption;->OVERRIDE_READ_ONLY:Lonyx/org/apache/commons/io/file/StandardDeleteOption;

    filled-new-array {v0}, [Lonyx/org/apache/commons/io/file/StandardDeleteOption;

    move-result-object v0

    sput-object v0, Lonyx/org/apache/commons/io/file/StandardDeleteOption;->$VALUES:[Lonyx/org/apache/commons/io/file/StandardDeleteOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a(Lonyx/org/apache/commons/io/file/DeleteOption;)Z
    .locals 0

    invoke-static {p0}, Lonyx/org/apache/commons/io/file/StandardDeleteOption;->lambda$overrideReadOnly$0(Lonyx/org/apache/commons/io/file/DeleteOption;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$overrideReadOnly$0(Lonyx/org/apache/commons/io/file/DeleteOption;)Z
    .locals 1

    sget-object v0, Lonyx/org/apache/commons/io/file/StandardDeleteOption;->OVERRIDE_READ_ONLY:Lonyx/org/apache/commons/io/file/StandardDeleteOption;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static overrideReadOnly([Lonyx/org/apache/commons/io/file/DeleteOption;)Z
    .locals 1

    invoke-static {p0}, Lonyx/org/apache/commons/io/IOUtils;->length([Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/lxm;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/lxm;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lonyx/org/apache/commons/io/file/StandardDeleteOption;
    .locals 1

    const-class v0, Lonyx/org/apache/commons/io/file/StandardDeleteOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/file/StandardDeleteOption;

    return-object p0
.end method

.method public static values()[Lonyx/org/apache/commons/io/file/StandardDeleteOption;
    .locals 1

    sget-object v0, Lonyx/org/apache/commons/io/file/StandardDeleteOption;->$VALUES:[Lonyx/org/apache/commons/io/file/StandardDeleteOption;

    invoke-virtual {v0}, [Lonyx/org/apache/commons/io/file/StandardDeleteOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lonyx/org/apache/commons/io/file/StandardDeleteOption;

    return-object v0
.end method
