.class public final enum Lcom/evernote/edam/type/ReminderEmailConfig;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/evernote/thrift/TEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evernote/edam/type/ReminderEmailConfig;",
        ">;",
        "Lcom/evernote/thrift/TEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evernote/edam/type/ReminderEmailConfig;

.field public static final enum DO_NOT_SEND:Lcom/evernote/edam/type/ReminderEmailConfig;

.field public static final enum SEND_DAILY_EMAIL:Lcom/evernote/edam/type/ReminderEmailConfig;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/evernote/edam/type/ReminderEmailConfig;

    const-string v1, "DO_NOT_SEND"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/edam/type/ReminderEmailConfig;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/evernote/edam/type/ReminderEmailConfig;->DO_NOT_SEND:Lcom/evernote/edam/type/ReminderEmailConfig;

    new-instance v1, Lcom/evernote/edam/type/ReminderEmailConfig;

    const-string v2, "SEND_DAILY_EMAIL"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/evernote/edam/type/ReminderEmailConfig;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/evernote/edam/type/ReminderEmailConfig;->SEND_DAILY_EMAIL:Lcom/evernote/edam/type/ReminderEmailConfig;

    filled-new-array {v0, v1}, [Lcom/evernote/edam/type/ReminderEmailConfig;

    move-result-object v0

    sput-object v0, Lcom/evernote/edam/type/ReminderEmailConfig;->$VALUES:[Lcom/evernote/edam/type/ReminderEmailConfig;

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

    iput p3, p0, Lcom/evernote/edam/type/ReminderEmailConfig;->value:I

    return-void
.end method

.method public static findByValue(I)Lcom/evernote/edam/type/ReminderEmailConfig;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/evernote/edam/type/ReminderEmailConfig;->SEND_DAILY_EMAIL:Lcom/evernote/edam/type/ReminderEmailConfig;

    return-object p0

    :cond_1
    sget-object p0, Lcom/evernote/edam/type/ReminderEmailConfig;->DO_NOT_SEND:Lcom/evernote/edam/type/ReminderEmailConfig;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evernote/edam/type/ReminderEmailConfig;
    .locals 1

    const-class v0, Lcom/evernote/edam/type/ReminderEmailConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evernote/edam/type/ReminderEmailConfig;

    return-object p0
.end method

.method public static values()[Lcom/evernote/edam/type/ReminderEmailConfig;
    .locals 1

    sget-object v0, Lcom/evernote/edam/type/ReminderEmailConfig;->$VALUES:[Lcom/evernote/edam/type/ReminderEmailConfig;

    invoke-virtual {v0}, [Lcom/evernote/edam/type/ReminderEmailConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evernote/edam/type/ReminderEmailConfig;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/type/ReminderEmailConfig;->value:I

    return p0
.end method
