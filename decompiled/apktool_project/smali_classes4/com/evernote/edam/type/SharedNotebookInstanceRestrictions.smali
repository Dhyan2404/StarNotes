.class public final enum Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/evernote/thrift/TEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;",
        ">;",
        "Lcom/evernote/thrift/TEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

.field public static final enum NO_SHARED_NOTEBOOKS:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

.field public static final enum ONLY_JOINED_OR_PREVIEW:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    const-string v1, "ONLY_JOINED_OR_PREVIEW"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;->ONLY_JOINED_OR_PREVIEW:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    new-instance v1, Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    const-string v2, "NO_SHARED_NOTEBOOKS"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;->NO_SHARED_NOTEBOOKS:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    filled-new-array {v0, v1}, [Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    move-result-object v0

    sput-object v0, Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;->$VALUES:[Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

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

    iput p3, p0, Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;->value:I

    return-void
.end method

.method public static findByValue(I)Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;->NO_SHARED_NOTEBOOKS:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    return-object p0

    :cond_1
    sget-object p0, Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;->ONLY_JOINED_OR_PREVIEW:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;
    .locals 1

    const-class v0, Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    return-object p0
.end method

.method public static values()[Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;
    .locals 1

    sget-object v0, Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;->$VALUES:[Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    invoke-virtual {v0}, [Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;->value:I

    return p0
.end method
