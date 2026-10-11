.class public final enum Lnet/sf/saxon/type/OpenContentVariety;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/type/OpenContentVariety;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/type/OpenContentVariety;

.field public static final enum ABSENT:Lnet/sf/saxon/type/OpenContentVariety;

.field public static final enum INTERLEAVE:Lnet/sf/saxon/type/OpenContentVariety;

.field public static final enum NONE:Lnet/sf/saxon/type/OpenContentVariety;

.field public static final enum SUFFIX:Lnet/sf/saxon/type/OpenContentVariety;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lnet/sf/saxon/type/OpenContentVariety;

    const-string v1, "ABSENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/type/OpenContentVariety;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/saxon/type/OpenContentVariety;->ABSENT:Lnet/sf/saxon/type/OpenContentVariety;

    new-instance v1, Lnet/sf/saxon/type/OpenContentVariety;

    const-string v2, "NONE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/type/OpenContentVariety;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/saxon/type/OpenContentVariety;->NONE:Lnet/sf/saxon/type/OpenContentVariety;

    new-instance v2, Lnet/sf/saxon/type/OpenContentVariety;

    const-string v3, "INTERLEAVE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/type/OpenContentVariety;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/sf/saxon/type/OpenContentVariety;->INTERLEAVE:Lnet/sf/saxon/type/OpenContentVariety;

    new-instance v3, Lnet/sf/saxon/type/OpenContentVariety;

    const-string v4, "SUFFIX"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/type/OpenContentVariety;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/sf/saxon/type/OpenContentVariety;->SUFFIX:Lnet/sf/saxon/type/OpenContentVariety;

    filled-new-array {v0, v1, v2, v3}, [Lnet/sf/saxon/type/OpenContentVariety;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/type/OpenContentVariety;->$VALUES:[Lnet/sf/saxon/type/OpenContentVariety;

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

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/type/OpenContentVariety;
    .locals 1

    const-class v0, Lnet/sf/saxon/type/OpenContentVariety;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/OpenContentVariety;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/type/OpenContentVariety;
    .locals 1

    sget-object v0, Lnet/sf/saxon/type/OpenContentVariety;->$VALUES:[Lnet/sf/saxon/type/OpenContentVariety;

    invoke-virtual {v0}, [Lnet/sf/saxon/type/OpenContentVariety;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/type/OpenContentVariety;

    return-object v0
.end method
