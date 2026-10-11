.class public Lcom/evernote/edam/type/SharedNotebookRecipientSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/evernote/thrift/TBase;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase<",
        "Lcom/evernote/edam/type/SharedNotebookRecipientSettings;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final REMINDER_NOTIFY_EMAIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final REMINDER_NOTIFY_IN_APP_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final __REMINDERNOTIFYEMAIL_ISSET_ID:I = 0x0

.field private static final __REMINDERNOTIFYINAPP_ISSET_ID:I = 0x1


# instance fields
.field private __isset_vector:[Z

.field private reminderNotifyEmail:Z

.field private reminderNotifyInApp:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "SharedNotebookRecipientSettings"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x1

    const-string v2, "reminderNotifyEmail"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->REMINDER_NOTIFY_EMAIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "reminderNotifyInApp"

    invoke-direct {v0, v1, v3, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->REMINDER_NOTIFY_IN_APP_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Z

    .line 2
    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->__isset_vector:[Z

    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/type/SharedNotebookRecipientSettings;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Z

    .line 4
    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->__isset_vector:[Z

    .line 5
    iget-object v1, p1, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->__isset_vector:[Z

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-boolean v0, p1, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyEmail:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyEmail:Z

    .line 7
    iget-boolean p1, p1, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyInApp:Z

    iput-boolean p1, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyInApp:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->setReminderNotifyEmailIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyEmail:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->setReminderNotifyInAppIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyInApp:Z

    return-void
.end method

.method public compareTo(Lcom/evernote/edam/type/SharedNotebookRecipientSettings;)I
    .locals 2

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->isSetReminderNotifyEmail()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->isSetReminderNotifyEmail()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->isSetReminderNotifyEmail()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyEmail:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyEmail:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->isSetReminderNotifyInApp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->isSetReminderNotifyInApp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->isSetReminderNotifyInApp()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean p0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyInApp:Z

    iget-boolean p1, p1, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyInApp:Z

    invoke-static {p0, p1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result p0

    if-eqz p0, :cond_4

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->compareTo(Lcom/evernote/edam/type/SharedNotebookRecipientSettings;)I

    move-result p0

    return p0
.end method

.method public deepCopy()Lcom/evernote/edam/type/SharedNotebookRecipientSettings;
    .locals 1

    .line 2
    new-instance v0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    invoke-direct {v0, p0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;-><init>(Lcom/evernote/edam/type/SharedNotebookRecipientSettings;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->deepCopy()Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    move-result-object p0

    return-object p0
.end method

.method public equals(Lcom/evernote/edam/type/SharedNotebookRecipientSettings;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->isSetReminderNotifyEmail()Z

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->isSetReminderNotifyEmail()Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v1, :cond_7

    if-nez v2, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-boolean v1, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyEmail:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyEmail:Z

    if-eq v1, v2, :cond_3

    return v0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->isSetReminderNotifyInApp()Z

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->isSetReminderNotifyInApp()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    if-eqz v1, :cond_7

    if-nez v2, :cond_5

    goto :goto_0

    .line 8
    :cond_5
    iget-boolean p0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyInApp:Z

    iget-boolean p1, p1, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyInApp:Z

    if-eq p0, p1, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->equals(Lcom/evernote/edam/type/SharedNotebookRecipientSettings;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isReminderNotifyEmail()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyEmail:Z

    return p0
.end method

.method public isReminderNotifyInApp()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyInApp:Z

    return p0
.end method

.method public isSetReminderNotifyEmail()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->__isset_vector:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetReminderNotifyInApp()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->__isset_vector:[Z

    const/4 v0, 0x1

    aget-boolean p0, p0, v0

    return p0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->validate()V

    return-void

    :cond_0
    iget-short v0, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_1

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :cond_1
    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyInApp:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->setReminderNotifyInAppIsSet(Z)V

    goto :goto_1

    :cond_2
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :cond_3
    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyEmail:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->setReminderNotifyEmailIsSet(Z)V

    goto :goto_1

    :cond_4
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0
.end method

.method public setReminderNotifyEmail(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyEmail:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->setReminderNotifyEmailIsSet(Z)V

    return-void
.end method

.method public setReminderNotifyEmailIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setReminderNotifyInApp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyInApp:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->setReminderNotifyInAppIsSet(Z)V

    return-void
.end method

.method public setReminderNotifyInAppIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->__isset_vector:[Z

    const/4 v0, 0x1

    aput-boolean p1, p0, v0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SharedNotebookRecipientSettings("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->isSetReminderNotifyEmail()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "reminderNotifyEmail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyEmail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->isSetReminderNotifyInApp()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "reminderNotifyInApp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyInApp:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_2
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unsetReminderNotifyEmail()V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    return-void
.end method

.method public unsetReminderNotifyInApp()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->__isset_vector:[Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    return-void
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->validate()V

    sget-object v0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->isSetReminderNotifyEmail()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->REMINDER_NOTIFY_EMAIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyEmail:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->isSetReminderNotifyInApp()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->REMINDER_NOTIFY_IN_APP_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean p0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyInApp:Z

    invoke-virtual {p1, p0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    return-void
.end method
