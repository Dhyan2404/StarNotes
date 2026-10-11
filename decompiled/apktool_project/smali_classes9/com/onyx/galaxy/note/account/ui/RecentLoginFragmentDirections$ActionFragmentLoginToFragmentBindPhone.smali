.class public Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections$ActionFragmentLoginToFragmentBindPhone;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/navigation/NavDirections;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionFragmentLoginToFragmentBindPhone"
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections$ActionFragmentLoginToFragmentBindPhone;->a:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections$ActionFragmentLoginToFragmentBindPhone;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections$ActionFragmentLoginToFragmentBindPhone;

    iget-object v2, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections$ActionFragmentLoginToFragmentBindPhone;->a:Ljava/util/HashMap;

    const-string v3, "bind_type"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    iget-object v4, p1, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections$ActionFragmentLoginToFragmentBindPhone;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections$ActionFragmentLoginToFragmentBindPhone;->getBindType()Lcom/onyx/galaxy/note/account/data/BindType;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections$ActionFragmentLoginToFragmentBindPhone;->getBindType()Lcom/onyx/galaxy/note/account/data/BindType;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections$ActionFragmentLoginToFragmentBindPhone;->getBindType()Lcom/onyx/galaxy/note/account/data/BindType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections$ActionFragmentLoginToFragmentBindPhone;->getBindType()Lcom/onyx/galaxy/note/account/data/BindType;

    move-result-object v2

    if-eqz v2, :cond_4

    :goto_0
    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections$ActionFragmentLoginToFragmentBindPhone;->getActionId()I

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections$ActionFragmentLoginToFragmentBindPhone;->getActionId()I

    move-result p1

    if-eq p0, p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public getActionId()I
    .locals 0

    sget p0, Lcom/onyx/galaxy/note/R$id;->action_fragment_login_to_fragment_bind_phone:I

    return p0
.end method

.method public getArguments()Landroid/os/Bundle;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections$ActionFragmentLoginToFragmentBindPhone;->a:Ljava/util/HashMap;

    const-string v2, "bind_type"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections$ActionFragmentLoginToFragmentBindPhone;->a:Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/account/data/BindType;

    const-class v1, Landroid/os/Parcelable;

    const-class v3, Lcom/onyx/galaxy/note/account/data/BindType;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/Serializable;

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must implement Parcelable or Serializable or must be an Enum."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/onyx/galaxy/note/account/data/BindType;->BIND_PHONE:Lcom/onyx/galaxy/note/account/data/BindType;

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :goto_1
    return-object v0
.end method

.method public getBindType()Lcom/onyx/galaxy/note/account/data/BindType;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections$ActionFragmentLoginToFragmentBindPhone;->a:Ljava/util/HashMap;

    const-string v0, "bind_type"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/account/data/BindType;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections$ActionFragmentLoginToFragmentBindPhone;->getBindType()Lcom/onyx/galaxy/note/account/data/BindType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections$ActionFragmentLoginToFragmentBindPhone;->getBindType()Lcom/onyx/galaxy/note/account/data/BindType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections$ActionFragmentLoginToFragmentBindPhone;->getActionId()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public setBindType(Lcom/onyx/galaxy/note/account/data/BindType;)Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections$ActionFragmentLoginToFragmentBindPhone;
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/account/data/BindType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections$ActionFragmentLoginToFragmentBindPhone;->a:Ljava/util/HashMap;

    const-string v1, "bind_type"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument \"bind_type\" is marked as non-null but was passed a null value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionFragmentLoginToFragmentBindPhone(actionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections$ActionFragmentLoginToFragmentBindPhone;->getActionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "){bindType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections$ActionFragmentLoginToFragmentBindPhone;->getBindType()Lcom/onyx/galaxy/note/account/data/BindType;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
