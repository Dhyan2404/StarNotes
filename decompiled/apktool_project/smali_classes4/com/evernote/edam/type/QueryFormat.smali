.class public final enum Lcom/evernote/edam/type/QueryFormat;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/evernote/thrift/TEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evernote/edam/type/QueryFormat;",
        ">;",
        "Lcom/evernote/thrift/TEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evernote/edam/type/QueryFormat;

.field public static final enum SEXP:Lcom/evernote/edam/type/QueryFormat;

.field public static final enum USER:Lcom/evernote/edam/type/QueryFormat;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/evernote/edam/type/QueryFormat;

    const-string v1, "USER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/edam/type/QueryFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/evernote/edam/type/QueryFormat;->USER:Lcom/evernote/edam/type/QueryFormat;

    new-instance v1, Lcom/evernote/edam/type/QueryFormat;

    const-string v2, "SEXP"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/evernote/edam/type/QueryFormat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/evernote/edam/type/QueryFormat;->SEXP:Lcom/evernote/edam/type/QueryFormat;

    filled-new-array {v0, v1}, [Lcom/evernote/edam/type/QueryFormat;

    move-result-object v0

    sput-object v0, Lcom/evernote/edam/type/QueryFormat;->$VALUES:[Lcom/evernote/edam/type/QueryFormat;

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

    iput p3, p0, Lcom/evernote/edam/type/QueryFormat;->value:I

    return-void
.end method

.method public static findByValue(I)Lcom/evernote/edam/type/QueryFormat;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/evernote/edam/type/QueryFormat;->SEXP:Lcom/evernote/edam/type/QueryFormat;

    return-object p0

    :cond_1
    sget-object p0, Lcom/evernote/edam/type/QueryFormat;->USER:Lcom/evernote/edam/type/QueryFormat;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evernote/edam/type/QueryFormat;
    .locals 1

    const-class v0, Lcom/evernote/edam/type/QueryFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evernote/edam/type/QueryFormat;

    return-object p0
.end method

.method public static values()[Lcom/evernote/edam/type/QueryFormat;
    .locals 1

    sget-object v0, Lcom/evernote/edam/type/QueryFormat;->$VALUES:[Lcom/evernote/edam/type/QueryFormat;

    invoke-virtual {v0}, [Lcom/evernote/edam/type/QueryFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evernote/edam/type/QueryFormat;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/type/QueryFormat;->value:I

    return p0
.end method
