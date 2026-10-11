.class public final enum Lorg/scribe/model/Verb;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/scribe/model/Verb;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/scribe/model/Verb;

.field public static final enum DELETE:Lorg/scribe/model/Verb;

.field public static final enum GET:Lorg/scribe/model/Verb;

.field public static final enum HEAD:Lorg/scribe/model/Verb;

.field public static final enum OPTIONS:Lorg/scribe/model/Verb;

.field public static final enum POST:Lorg/scribe/model/Verb;

.field public static final enum PUT:Lorg/scribe/model/Verb;

.field public static final enum TRACE:Lorg/scribe/model/Verb;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/scribe/model/Verb;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/scribe/model/Verb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/scribe/model/Verb;->GET:Lorg/scribe/model/Verb;

    new-instance v1, Lorg/scribe/model/Verb;

    const-string v2, "POST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/scribe/model/Verb;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/scribe/model/Verb;->POST:Lorg/scribe/model/Verb;

    new-instance v2, Lorg/scribe/model/Verb;

    const-string v3, "PUT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/scribe/model/Verb;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/scribe/model/Verb;->PUT:Lorg/scribe/model/Verb;

    new-instance v3, Lorg/scribe/model/Verb;

    const-string v4, "DELETE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/scribe/model/Verb;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/scribe/model/Verb;->DELETE:Lorg/scribe/model/Verb;

    new-instance v4, Lorg/scribe/model/Verb;

    const-string v5, "HEAD"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/scribe/model/Verb;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/scribe/model/Verb;->HEAD:Lorg/scribe/model/Verb;

    new-instance v5, Lorg/scribe/model/Verb;

    const-string v6, "OPTIONS"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/scribe/model/Verb;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/scribe/model/Verb;->OPTIONS:Lorg/scribe/model/Verb;

    new-instance v6, Lorg/scribe/model/Verb;

    const-string v7, "TRACE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/scribe/model/Verb;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/scribe/model/Verb;->TRACE:Lorg/scribe/model/Verb;

    filled-new-array/range {v0 .. v6}, [Lorg/scribe/model/Verb;

    move-result-object v0

    sput-object v0, Lorg/scribe/model/Verb;->$VALUES:[Lorg/scribe/model/Verb;

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

.method public static valueOf(Ljava/lang/String;)Lorg/scribe/model/Verb;
    .locals 1

    const-class v0, Lorg/scribe/model/Verb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/scribe/model/Verb;

    return-object p0
.end method

.method public static values()[Lorg/scribe/model/Verb;
    .locals 1

    sget-object v0, Lorg/scribe/model/Verb;->$VALUES:[Lorg/scribe/model/Verb;

    invoke-virtual {v0}, [Lorg/scribe/model/Verb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/scribe/model/Verb;

    return-object v0
.end method
