.class public final enum Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PrincipalType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

.field public static final enum HREF:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

.field public static final enum KEY:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

.field public static final enum PROPERTY:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    const-string v1, "HREF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;->HREF:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    new-instance v1, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    const-string v2, "KEY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;->KEY:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    const-string v3, "PROPERTY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;->PROPERTY:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    filled-new-array {v0, v1, v2}, [Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    move-result-object v0

    sput-object v0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;->$VALUES:[Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;
    .locals 1

    const-class v0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    return-object p0
.end method

.method public static values()[Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;
    .locals 1

    sget-object v0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;->$VALUES:[Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    invoke-virtual {v0}, [Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    return-object v0
.end method
