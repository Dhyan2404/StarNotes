.class public final enum Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/evernote/thrift/TEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;",
        ">;",
        "Lcom/evernote/thrift/TEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

.field public static final enum BUSINESS_FULL_ACCESS:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

.field public static final enum FULL_ACCESS:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

.field public static final enum GROUP:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

.field public static final enum MODIFY_NOTEBOOK_PLUS_ACTIVITY:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

.field public static final enum READ_NOTEBOOK:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

.field public static final enum READ_NOTEBOOK_PLUS_ACTIVITY:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    const-string v1, "READ_NOTEBOOK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;->READ_NOTEBOOK:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    new-instance v1, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    const-string v2, "MODIFY_NOTEBOOK_PLUS_ACTIVITY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;->MODIFY_NOTEBOOK_PLUS_ACTIVITY:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    new-instance v2, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    const-string v3, "READ_NOTEBOOK_PLUS_ACTIVITY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;->READ_NOTEBOOK_PLUS_ACTIVITY:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    new-instance v3, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    const-string v4, "GROUP"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;->GROUP:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    new-instance v4, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    const-string v5, "FULL_ACCESS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;->FULL_ACCESS:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    new-instance v5, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    const-string v6, "BUSINESS_FULL_ACCESS"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;->BUSINESS_FULL_ACCESS:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    filled-new-array/range {v0 .. v5}, [Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    move-result-object v0

    sput-object v0, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;->$VALUES:[Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

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

    iput p3, p0, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;->value:I

    return-void
.end method

.method public static findByValue(I)Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;->BUSINESS_FULL_ACCESS:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    return-object p0

    :cond_1
    sget-object p0, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;->FULL_ACCESS:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    return-object p0

    :cond_2
    sget-object p0, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;->GROUP:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    return-object p0

    :cond_3
    sget-object p0, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;->READ_NOTEBOOK_PLUS_ACTIVITY:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    return-object p0

    :cond_4
    sget-object p0, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;->MODIFY_NOTEBOOK_PLUS_ACTIVITY:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    return-object p0

    :cond_5
    sget-object p0, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;->READ_NOTEBOOK:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;
    .locals 1

    const-class v0, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    return-object p0
.end method

.method public static values()[Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;
    .locals 1

    sget-object v0, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;->$VALUES:[Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    invoke-virtual {v0}, [Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;->value:I

    return p0
.end method
