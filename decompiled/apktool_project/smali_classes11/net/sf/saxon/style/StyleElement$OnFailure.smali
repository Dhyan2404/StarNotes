.class public final enum Lnet/sf/saxon/style/StyleElement$OnFailure;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/style/StyleElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OnFailure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/style/StyleElement$OnFailure;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/style/StyleElement$OnFailure;

.field public static final enum IGNORED_INSTRUCTION:Lnet/sf/saxon/style/StyleElement$OnFailure;

.field public static final enum REPORT_ALWAYS:Lnet/sf/saxon/style/StyleElement$OnFailure;

.field public static final enum REPORT_DYNAMICALLY_UNLESS_FALLBACK_AVAILABLE:Lnet/sf/saxon/style/StyleElement$OnFailure;

.field public static final enum REPORT_IF_INSTANTIATED:Lnet/sf/saxon/style/StyleElement$OnFailure;

.field public static final enum REPORT_STATICALLY_UNLESS_FALLBACK_AVAILABLE:Lnet/sf/saxon/style/StyleElement$OnFailure;

.field public static final enum REPORT_UNLESS_FORWARDS_COMPATIBLE:Lnet/sf/saxon/style/StyleElement$OnFailure;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lnet/sf/saxon/style/StyleElement$OnFailure;

    const-string v1, "REPORT_ALWAYS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/style/StyleElement$OnFailure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/saxon/style/StyleElement$OnFailure;->REPORT_ALWAYS:Lnet/sf/saxon/style/StyleElement$OnFailure;

    new-instance v1, Lnet/sf/saxon/style/StyleElement$OnFailure;

    const-string v2, "REPORT_UNLESS_FORWARDS_COMPATIBLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/style/StyleElement$OnFailure;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/saxon/style/StyleElement$OnFailure;->REPORT_UNLESS_FORWARDS_COMPATIBLE:Lnet/sf/saxon/style/StyleElement$OnFailure;

    new-instance v2, Lnet/sf/saxon/style/StyleElement$OnFailure;

    const-string v3, "REPORT_IF_INSTANTIATED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/style/StyleElement$OnFailure;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/sf/saxon/style/StyleElement$OnFailure;->REPORT_IF_INSTANTIATED:Lnet/sf/saxon/style/StyleElement$OnFailure;

    new-instance v3, Lnet/sf/saxon/style/StyleElement$OnFailure;

    const-string v4, "REPORT_STATICALLY_UNLESS_FALLBACK_AVAILABLE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/style/StyleElement$OnFailure;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/sf/saxon/style/StyleElement$OnFailure;->REPORT_STATICALLY_UNLESS_FALLBACK_AVAILABLE:Lnet/sf/saxon/style/StyleElement$OnFailure;

    new-instance v4, Lnet/sf/saxon/style/StyleElement$OnFailure;

    const-string v5, "REPORT_DYNAMICALLY_UNLESS_FALLBACK_AVAILABLE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lnet/sf/saxon/style/StyleElement$OnFailure;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnet/sf/saxon/style/StyleElement$OnFailure;->REPORT_DYNAMICALLY_UNLESS_FALLBACK_AVAILABLE:Lnet/sf/saxon/style/StyleElement$OnFailure;

    new-instance v5, Lnet/sf/saxon/style/StyleElement$OnFailure;

    const-string v6, "IGNORED_INSTRUCTION"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lnet/sf/saxon/style/StyleElement$OnFailure;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/sf/saxon/style/StyleElement$OnFailure;->IGNORED_INSTRUCTION:Lnet/sf/saxon/style/StyleElement$OnFailure;

    filled-new-array/range {v0 .. v5}, [Lnet/sf/saxon/style/StyleElement$OnFailure;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/style/StyleElement$OnFailure;->$VALUES:[Lnet/sf/saxon/style/StyleElement$OnFailure;

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

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/style/StyleElement$OnFailure;
    .locals 1

    const-class v0, Lnet/sf/saxon/style/StyleElement$OnFailure;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/style/StyleElement$OnFailure;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/style/StyleElement$OnFailure;
    .locals 1

    sget-object v0, Lnet/sf/saxon/style/StyleElement$OnFailure;->$VALUES:[Lnet/sf/saxon/style/StyleElement$OnFailure;

    invoke-virtual {v0}, [Lnet/sf/saxon/style/StyleElement$OnFailure;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/style/StyleElement$OnFailure;

    return-object v0
.end method
