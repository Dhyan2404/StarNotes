.class public final enum Lcom/evernote/edam/type/PrivilegeLevel;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/evernote/thrift/TEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evernote/edam/type/PrivilegeLevel;",
        ">;",
        "Lcom/evernote/thrift/TEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evernote/edam/type/PrivilegeLevel;

.field public static final enum ADMIN:Lcom/evernote/edam/type/PrivilegeLevel;

.field public static final enum MANAGER:Lcom/evernote/edam/type/PrivilegeLevel;

.field public static final enum NORMAL:Lcom/evernote/edam/type/PrivilegeLevel;

.field public static final enum PREMIUM:Lcom/evernote/edam/type/PrivilegeLevel;

.field public static final enum SUPPORT:Lcom/evernote/edam/type/PrivilegeLevel;

.field public static final enum VIP:Lcom/evernote/edam/type/PrivilegeLevel;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/evernote/edam/type/PrivilegeLevel;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/edam/type/PrivilegeLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/evernote/edam/type/PrivilegeLevel;->NORMAL:Lcom/evernote/edam/type/PrivilegeLevel;

    new-instance v1, Lcom/evernote/edam/type/PrivilegeLevel;

    const-string v2, "PREMIUM"

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/evernote/edam/type/PrivilegeLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/evernote/edam/type/PrivilegeLevel;->PREMIUM:Lcom/evernote/edam/type/PrivilegeLevel;

    new-instance v2, Lcom/evernote/edam/type/PrivilegeLevel;

    const-string v3, "VIP"

    const/4 v5, 0x2

    const/4 v6, 0x5

    invoke-direct {v2, v3, v5, v6}, Lcom/evernote/edam/type/PrivilegeLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/evernote/edam/type/PrivilegeLevel;->VIP:Lcom/evernote/edam/type/PrivilegeLevel;

    new-instance v3, Lcom/evernote/edam/type/PrivilegeLevel;

    const-string v5, "MANAGER"

    const/4 v7, 0x7

    invoke-direct {v3, v5, v4, v7}, Lcom/evernote/edam/type/PrivilegeLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/evernote/edam/type/PrivilegeLevel;->MANAGER:Lcom/evernote/edam/type/PrivilegeLevel;

    new-instance v4, Lcom/evernote/edam/type/PrivilegeLevel;

    const/4 v5, 0x4

    const/16 v7, 0x8

    const-string v8, "SUPPORT"

    invoke-direct {v4, v8, v5, v7}, Lcom/evernote/edam/type/PrivilegeLevel;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/evernote/edam/type/PrivilegeLevel;->SUPPORT:Lcom/evernote/edam/type/PrivilegeLevel;

    new-instance v5, Lcom/evernote/edam/type/PrivilegeLevel;

    const-string v7, "ADMIN"

    const/16 v8, 0x9

    invoke-direct {v5, v7, v6, v8}, Lcom/evernote/edam/type/PrivilegeLevel;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/evernote/edam/type/PrivilegeLevel;->ADMIN:Lcom/evernote/edam/type/PrivilegeLevel;

    filled-new-array/range {v0 .. v5}, [Lcom/evernote/edam/type/PrivilegeLevel;

    move-result-object v0

    sput-object v0, Lcom/evernote/edam/type/PrivilegeLevel;->$VALUES:[Lcom/evernote/edam/type/PrivilegeLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/evernote/edam/type/PrivilegeLevel;->value:I

    return-void
.end method

.method public static findByValue(I)Lcom/evernote/edam/type/PrivilegeLevel;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x5

    if-eq p0, v0, :cond_3

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/evernote/edam/type/PrivilegeLevel;->ADMIN:Lcom/evernote/edam/type/PrivilegeLevel;

    return-object p0

    :cond_1
    sget-object p0, Lcom/evernote/edam/type/PrivilegeLevel;->SUPPORT:Lcom/evernote/edam/type/PrivilegeLevel;

    return-object p0

    :cond_2
    sget-object p0, Lcom/evernote/edam/type/PrivilegeLevel;->MANAGER:Lcom/evernote/edam/type/PrivilegeLevel;

    return-object p0

    :cond_3
    sget-object p0, Lcom/evernote/edam/type/PrivilegeLevel;->VIP:Lcom/evernote/edam/type/PrivilegeLevel;

    return-object p0

    :cond_4
    sget-object p0, Lcom/evernote/edam/type/PrivilegeLevel;->PREMIUM:Lcom/evernote/edam/type/PrivilegeLevel;

    return-object p0

    :cond_5
    sget-object p0, Lcom/evernote/edam/type/PrivilegeLevel;->NORMAL:Lcom/evernote/edam/type/PrivilegeLevel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evernote/edam/type/PrivilegeLevel;
    .locals 1

    const-class v0, Lcom/evernote/edam/type/PrivilegeLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evernote/edam/type/PrivilegeLevel;

    return-object p0
.end method

.method public static values()[Lcom/evernote/edam/type/PrivilegeLevel;
    .locals 1

    sget-object v0, Lcom/evernote/edam/type/PrivilegeLevel;->$VALUES:[Lcom/evernote/edam/type/PrivilegeLevel;

    invoke-virtual {v0}, [Lcom/evernote/edam/type/PrivilegeLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evernote/edam/type/PrivilegeLevel;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/type/PrivilegeLevel;->value:I

    return p0
.end method
