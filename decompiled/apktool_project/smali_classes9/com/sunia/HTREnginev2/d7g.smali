.class public final synthetic Lcom/sunia/HTREnginev2/d7g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;

.field public final synthetic b:Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/d7g;->a:Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/d7g;->b:Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/d7g;->a:Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d7g;->b:Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;->c(Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
