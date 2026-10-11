.class public final enum Lnet/sf/saxon/trans/Visibility;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/trans/Visibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/trans/Visibility;

.field public static final enum ABSTRACT:Lnet/sf/saxon/trans/Visibility;

.field public static final enum FINAL:Lnet/sf/saxon/trans/Visibility;

.field public static final enum HIDDEN:Lnet/sf/saxon/trans/Visibility;

.field public static final enum PRIVATE:Lnet/sf/saxon/trans/Visibility;

.field public static final enum PUBLIC:Lnet/sf/saxon/trans/Visibility;

.field public static final enum UNDEFINED:Lnet/sf/saxon/trans/Visibility;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lnet/sf/saxon/trans/Visibility;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/trans/Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/saxon/trans/Visibility;->PUBLIC:Lnet/sf/saxon/trans/Visibility;

    new-instance v1, Lnet/sf/saxon/trans/Visibility;

    const-string v2, "PRIVATE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/trans/Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    new-instance v2, Lnet/sf/saxon/trans/Visibility;

    const-string v3, "FINAL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/trans/Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/sf/saxon/trans/Visibility;->FINAL:Lnet/sf/saxon/trans/Visibility;

    new-instance v3, Lnet/sf/saxon/trans/Visibility;

    const-string v4, "ABSTRACT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/trans/Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/sf/saxon/trans/Visibility;->ABSTRACT:Lnet/sf/saxon/trans/Visibility;

    new-instance v4, Lnet/sf/saxon/trans/Visibility;

    const-string v5, "HIDDEN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lnet/sf/saxon/trans/Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnet/sf/saxon/trans/Visibility;->HIDDEN:Lnet/sf/saxon/trans/Visibility;

    new-instance v5, Lnet/sf/saxon/trans/Visibility;

    const-string v6, "UNDEFINED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lnet/sf/saxon/trans/Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/sf/saxon/trans/Visibility;->UNDEFINED:Lnet/sf/saxon/trans/Visibility;

    filled-new-array/range {v0 .. v5}, [Lnet/sf/saxon/trans/Visibility;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/trans/Visibility;->$VALUES:[Lnet/sf/saxon/trans/Visibility;

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

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/trans/Visibility;
    .locals 1

    const-class v0, Lnet/sf/saxon/trans/Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/trans/Visibility;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/trans/Visibility;
    .locals 1

    sget-object v0, Lnet/sf/saxon/trans/Visibility;->$VALUES:[Lnet/sf/saxon/trans/Visibility;

    invoke-virtual {v0}, [Lnet/sf/saxon/trans/Visibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/trans/Visibility;

    return-object v0
.end method
