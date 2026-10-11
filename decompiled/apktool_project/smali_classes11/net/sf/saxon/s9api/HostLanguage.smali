.class public final enum Lnet/sf/saxon/s9api/HostLanguage;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/s9api/HostLanguage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/s9api/HostLanguage;

.field public static final enum UNKNOWN:Lnet/sf/saxon/s9api/HostLanguage;

.field public static final enum XML_SCHEMA:Lnet/sf/saxon/s9api/HostLanguage;

.field public static final enum XPATH:Lnet/sf/saxon/s9api/HostLanguage;

.field public static final enum XQUERY:Lnet/sf/saxon/s9api/HostLanguage;

.field public static final enum XSLT:Lnet/sf/saxon/s9api/HostLanguage;

.field public static final enum XSLT_PATTERN:Lnet/sf/saxon/s9api/HostLanguage;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lnet/sf/saxon/s9api/HostLanguage;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/s9api/HostLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/saxon/s9api/HostLanguage;->UNKNOWN:Lnet/sf/saxon/s9api/HostLanguage;

    new-instance v1, Lnet/sf/saxon/s9api/HostLanguage;

    const-string v2, "XSLT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/s9api/HostLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    new-instance v2, Lnet/sf/saxon/s9api/HostLanguage;

    const-string v3, "XQUERY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/s9api/HostLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/sf/saxon/s9api/HostLanguage;->XQUERY:Lnet/sf/saxon/s9api/HostLanguage;

    new-instance v3, Lnet/sf/saxon/s9api/HostLanguage;

    const-string v4, "XML_SCHEMA"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/s9api/HostLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/sf/saxon/s9api/HostLanguage;->XML_SCHEMA:Lnet/sf/saxon/s9api/HostLanguage;

    new-instance v4, Lnet/sf/saxon/s9api/HostLanguage;

    const-string v5, "XPATH"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lnet/sf/saxon/s9api/HostLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnet/sf/saxon/s9api/HostLanguage;->XPATH:Lnet/sf/saxon/s9api/HostLanguage;

    new-instance v5, Lnet/sf/saxon/s9api/HostLanguage;

    const-string v6, "XSLT_PATTERN"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lnet/sf/saxon/s9api/HostLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/sf/saxon/s9api/HostLanguage;->XSLT_PATTERN:Lnet/sf/saxon/s9api/HostLanguage;

    filled-new-array/range {v0 .. v5}, [Lnet/sf/saxon/s9api/HostLanguage;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/s9api/HostLanguage;->$VALUES:[Lnet/sf/saxon/s9api/HostLanguage;

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

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/s9api/HostLanguage;
    .locals 1

    const-class v0, Lnet/sf/saxon/s9api/HostLanguage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/HostLanguage;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/s9api/HostLanguage;
    .locals 1

    sget-object v0, Lnet/sf/saxon/s9api/HostLanguage;->$VALUES:[Lnet/sf/saxon/s9api/HostLanguage;

    invoke-virtual {v0}, [Lnet/sf/saxon/s9api/HostLanguage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/s9api/HostLanguage;

    return-object v0
.end method
