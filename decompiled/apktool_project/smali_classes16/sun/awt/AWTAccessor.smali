.class public final Lsun/awt/AWTAccessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/awt/AWTAccessor$AccessibleContextAccessor;,
        Lsun/awt/AWTAccessor$SystemColorAccessor;,
        Lsun/awt/AWTAccessor$InvocationEventAccessor;,
        Lsun/awt/AWTAccessor$ToolkitAccessor;,
        Lsun/awt/AWTAccessor$SequencedEventAccessor;,
        Lsun/awt/AWTAccessor$DefaultKeyboardFocusManagerAccessor;,
        Lsun/awt/AWTAccessor$TrayIconAccessor;,
        Lsun/awt/AWTAccessor$SystemTrayAccessor;,
        Lsun/awt/AWTAccessor$ClientPropertyKeyAccessor;,
        Lsun/awt/AWTAccessor$KeyEventAccessor;,
        Lsun/awt/AWTAccessor$MenuAccessor;,
        Lsun/awt/AWTAccessor$MenuItemAccessor;,
        Lsun/awt/AWTAccessor$MenuBarAccessor;,
        Lsun/awt/AWTAccessor$CursorAccessor;,
        Lsun/awt/AWTAccessor$CheckboxMenuItemAccessor;,
        Lsun/awt/AWTAccessor$ScrollPaneAdjustableAccessor;,
        Lsun/awt/AWTAccessor$FileDialogAccessor;,
        Lsun/awt/AWTAccessor$PopupMenuAccessor;,
        Lsun/awt/AWTAccessor$EventQueueAccessor;,
        Lsun/awt/AWTAccessor$MenuComponentAccessor;,
        Lsun/awt/AWTAccessor$KeyboardFocusManagerAccessor;,
        Lsun/awt/AWTAccessor$FrameAccessor;,
        Lsun/awt/AWTAccessor$InputEventAccessor;,
        Lsun/awt/AWTAccessor$AWTEventAccessor;,
        Lsun/awt/AWTAccessor$WindowAccessor;,
        Lsun/awt/AWTAccessor$ContainerAccessor;,
        Lsun/awt/AWTAccessor$ComponentAccessor;
    }
.end annotation


# static fields
.field private static accessibleContextAccessor:Lsun/awt/AWTAccessor$AccessibleContextAccessor;

.field private static awtEventAccessor:Lsun/awt/AWTAccessor$AWTEventAccessor;

.field private static checkboxMenuItemAccessor:Lsun/awt/AWTAccessor$CheckboxMenuItemAccessor;

.field private static clientPropertyKeyAccessor:Lsun/awt/AWTAccessor$ClientPropertyKeyAccessor;

.field private static componentAccessor:Lsun/awt/AWTAccessor$ComponentAccessor;

.field private static containerAccessor:Lsun/awt/AWTAccessor$ContainerAccessor;

.field private static cursorAccessor:Lsun/awt/AWTAccessor$CursorAccessor;

.field private static defaultKeyboardFocusManagerAccessor:Lsun/awt/AWTAccessor$DefaultKeyboardFocusManagerAccessor;

.field private static eventQueueAccessor:Lsun/awt/AWTAccessor$EventQueueAccessor;

.field private static fileDialogAccessor:Lsun/awt/AWTAccessor$FileDialogAccessor;

.field private static frameAccessor:Lsun/awt/AWTAccessor$FrameAccessor;

.field private static inputEventAccessor:Lsun/awt/AWTAccessor$InputEventAccessor;

.field private static invocationEventAccessor:Lsun/awt/AWTAccessor$InvocationEventAccessor;

.field private static keyEventAccessor:Lsun/awt/AWTAccessor$KeyEventAccessor;

.field private static kfmAccessor:Lsun/awt/AWTAccessor$KeyboardFocusManagerAccessor;

.field private static menuAccessor:Lsun/awt/AWTAccessor$MenuAccessor;

.field private static menuBarAccessor:Lsun/awt/AWTAccessor$MenuBarAccessor;

.field private static menuComponentAccessor:Lsun/awt/AWTAccessor$MenuComponentAccessor;

.field private static menuItemAccessor:Lsun/awt/AWTAccessor$MenuItemAccessor;

.field private static popupMenuAccessor:Lsun/awt/AWTAccessor$PopupMenuAccessor;

.field private static scrollPaneAdjustableAccessor:Lsun/awt/AWTAccessor$ScrollPaneAdjustableAccessor;

.field private static sequencedEventAccessor:Lsun/awt/AWTAccessor$SequencedEventAccessor;

.field private static systemColorAccessor:Lsun/awt/AWTAccessor$SystemColorAccessor;

.field private static systemTrayAccessor:Lsun/awt/AWTAccessor$SystemTrayAccessor;

.field private static toolkitAccessor:Lsun/awt/AWTAccessor$ToolkitAccessor;

.field private static trayIconAccessor:Lsun/awt/AWTAccessor$TrayIconAccessor;

.field private static windowAccessor:Lsun/awt/AWTAccessor$WindowAccessor;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAWTEventAccessor()Lsun/awt/AWTAccessor$AWTEventAccessor;
    .locals 1

    sget-object v0, Lsun/awt/AWTAccessor;->awtEventAccessor:Lsun/awt/AWTAccessor$AWTEventAccessor;

    return-object v0
.end method

.method public static getAccessibleContextAccessor()Lsun/awt/AWTAccessor$AccessibleContextAccessor;
    .locals 1

    sget-object v0, Lsun/awt/AWTAccessor;->accessibleContextAccessor:Lsun/awt/AWTAccessor$AccessibleContextAccessor;

    return-object v0
.end method

.method public static getCheckboxMenuItemAccessor()Lsun/awt/AWTAccessor$CheckboxMenuItemAccessor;
    .locals 1

    sget-object v0, Lsun/awt/AWTAccessor;->checkboxMenuItemAccessor:Lsun/awt/AWTAccessor$CheckboxMenuItemAccessor;

    return-object v0
.end method

.method public static getClientPropertyKeyAccessor()Lsun/awt/AWTAccessor$ClientPropertyKeyAccessor;
    .locals 1

    sget-object v0, Lsun/awt/AWTAccessor;->clientPropertyKeyAccessor:Lsun/awt/AWTAccessor$ClientPropertyKeyAccessor;

    return-object v0
.end method

.method public static getComponentAccessor()Lsun/awt/AWTAccessor$ComponentAccessor;
    .locals 1

    sget-object v0, Lsun/awt/AWTAccessor;->componentAccessor:Lsun/awt/AWTAccessor$ComponentAccessor;

    return-object v0
.end method

.method public static getContainerAccessor()Lsun/awt/AWTAccessor$ContainerAccessor;
    .locals 1

    sget-object v0, Lsun/awt/AWTAccessor;->containerAccessor:Lsun/awt/AWTAccessor$ContainerAccessor;

    return-object v0
.end method

.method public static getCursorAccessor()Lsun/awt/AWTAccessor$CursorAccessor;
    .locals 1

    sget-object v0, Lsun/awt/AWTAccessor;->cursorAccessor:Lsun/awt/AWTAccessor$CursorAccessor;

    return-object v0
.end method

.method public static getDefaultKeyboardFocusManagerAccessor()Lsun/awt/AWTAccessor$DefaultKeyboardFocusManagerAccessor;
    .locals 1

    sget-object v0, Lsun/awt/AWTAccessor;->defaultKeyboardFocusManagerAccessor:Lsun/awt/AWTAccessor$DefaultKeyboardFocusManagerAccessor;

    return-object v0
.end method

.method public static getEventQueueAccessor()Lsun/awt/AWTAccessor$EventQueueAccessor;
    .locals 1

    sget-object v0, Lsun/awt/AWTAccessor;->eventQueueAccessor:Lsun/awt/AWTAccessor$EventQueueAccessor;

    return-object v0
.end method

.method public static getFileDialogAccessor()Lsun/awt/AWTAccessor$FileDialogAccessor;
    .locals 1

    sget-object v0, Lsun/awt/AWTAccessor;->fileDialogAccessor:Lsun/awt/AWTAccessor$FileDialogAccessor;

    return-object v0
.end method

.method public static getFrameAccessor()Lsun/awt/AWTAccessor$FrameAccessor;
    .locals 1

    sget-object v0, Lsun/awt/AWTAccessor;->frameAccessor:Lsun/awt/AWTAccessor$FrameAccessor;

    return-object v0
.end method

.method public static getInputEventAccessor()Lsun/awt/AWTAccessor$InputEventAccessor;
    .locals 1

    sget-object v0, Lsun/awt/AWTAccessor;->inputEventAccessor:Lsun/awt/AWTAccessor$InputEventAccessor;

    return-object v0
.end method

.method public static getInvocationEventAccessor()Lsun/awt/AWTAccessor$InvocationEventAccessor;
    .locals 1

    sget-object v0, Lsun/awt/AWTAccessor;->invocationEventAccessor:Lsun/awt/AWTAccessor$InvocationEventAccessor;

    return-object v0
.end method

.method public static getKeyEventAccessor()Lsun/awt/AWTAccessor$KeyEventAccessor;
    .locals 1

    sget-object v0, Lsun/awt/AWTAccessor;->keyEventAccessor:Lsun/awt/AWTAccessor$KeyEventAccessor;

    return-object v0
.end method

.method public static getKeyboardFocusManagerAccessor()Lsun/awt/AWTAccessor$KeyboardFocusManagerAccessor;
    .locals 1

    sget-object v0, Lsun/awt/AWTAccessor;->kfmAccessor:Lsun/awt/AWTAccessor$KeyboardFocusManagerAccessor;

    return-object v0
.end method

.method public static getMenuAccessor()Lsun/awt/AWTAccessor$MenuAccessor;
    .locals 1

    sget-object v0, Lsun/awt/AWTAccessor;->menuAccessor:Lsun/awt/AWTAccessor$MenuAccessor;

    return-object v0
.end method

.method public static getMenuBarAccessor()Lsun/awt/AWTAccessor$MenuBarAccessor;
    .locals 1

    sget-object v0, Lsun/awt/AWTAccessor;->menuBarAccessor:Lsun/awt/AWTAccessor$MenuBarAccessor;

    return-object v0
.end method

.method public static getMenuComponentAccessor()Lsun/awt/AWTAccessor$MenuComponentAccessor;
    .locals 1

    sget-object v0, Lsun/awt/AWTAccessor;->menuComponentAccessor:Lsun/awt/AWTAccessor$MenuComponentAccessor;

    return-object v0
.end method

.method public static getMenuItemAccessor()Lsun/awt/AWTAccessor$MenuItemAccessor;
    .locals 1

    sget-object v0, Lsun/awt/AWTAccessor;->menuItemAccessor:Lsun/awt/AWTAccessor$MenuItemAccessor;

    return-object v0
.end method

.method public static getPopupMenuAccessor()Lsun/awt/AWTAccessor$PopupMenuAccessor;
    .locals 1

    sget-object v0, Lsun/awt/AWTAccessor;->popupMenuAccessor:Lsun/awt/AWTAccessor$PopupMenuAccessor;

    return-object v0
.end method

.method public static getScrollPaneAdjustableAccessor()Lsun/awt/AWTAccessor$ScrollPaneAdjustableAccessor;
    .locals 1

    sget-object v0, Lsun/awt/AWTAccessor;->scrollPaneAdjustableAccessor:Lsun/awt/AWTAccessor$ScrollPaneAdjustableAccessor;

    return-object v0
.end method

.method public static getSequencedEventAccessor()Lsun/awt/AWTAccessor$SequencedEventAccessor;
    .locals 1

    sget-object v0, Lsun/awt/AWTAccessor;->sequencedEventAccessor:Lsun/awt/AWTAccessor$SequencedEventAccessor;

    return-object v0
.end method

.method public static getSystemColorAccessor()Lsun/awt/AWTAccessor$SystemColorAccessor;
    .locals 1

    sget-object v0, Lsun/awt/AWTAccessor;->systemColorAccessor:Lsun/awt/AWTAccessor$SystemColorAccessor;

    return-object v0
.end method

.method public static getSystemTrayAccessor()Lsun/awt/AWTAccessor$SystemTrayAccessor;
    .locals 1

    sget-object v0, Lsun/awt/AWTAccessor;->systemTrayAccessor:Lsun/awt/AWTAccessor$SystemTrayAccessor;

    return-object v0
.end method

.method public static getToolkitAccessor()Lsun/awt/AWTAccessor$ToolkitAccessor;
    .locals 1

    sget-object v0, Lsun/awt/AWTAccessor;->toolkitAccessor:Lsun/awt/AWTAccessor$ToolkitAccessor;

    return-object v0
.end method

.method public static getTrayIconAccessor()Lsun/awt/AWTAccessor$TrayIconAccessor;
    .locals 1

    sget-object v0, Lsun/awt/AWTAccessor;->trayIconAccessor:Lsun/awt/AWTAccessor$TrayIconAccessor;

    return-object v0
.end method

.method public static getWindowAccessor()Lsun/awt/AWTAccessor$WindowAccessor;
    .locals 1

    sget-object v0, Lsun/awt/AWTAccessor;->windowAccessor:Lsun/awt/AWTAccessor$WindowAccessor;

    return-object v0
.end method

.method public static setAWTEventAccessor(Lsun/awt/AWTAccessor$AWTEventAccessor;)V
    .locals 0

    sput-object p0, Lsun/awt/AWTAccessor;->awtEventAccessor:Lsun/awt/AWTAccessor$AWTEventAccessor;

    return-void
.end method

.method public static setAccessibleContextAccessor(Lsun/awt/AWTAccessor$AccessibleContextAccessor;)V
    .locals 0

    sput-object p0, Lsun/awt/AWTAccessor;->accessibleContextAccessor:Lsun/awt/AWTAccessor$AccessibleContextAccessor;

    return-void
.end method

.method public static setCheckboxMenuItemAccessor(Lsun/awt/AWTAccessor$CheckboxMenuItemAccessor;)V
    .locals 0

    sput-object p0, Lsun/awt/AWTAccessor;->checkboxMenuItemAccessor:Lsun/awt/AWTAccessor$CheckboxMenuItemAccessor;

    return-void
.end method

.method public static setClientPropertyKeyAccessor(Lsun/awt/AWTAccessor$ClientPropertyKeyAccessor;)V
    .locals 0

    sput-object p0, Lsun/awt/AWTAccessor;->clientPropertyKeyAccessor:Lsun/awt/AWTAccessor$ClientPropertyKeyAccessor;

    return-void
.end method

.method public static setComponentAccessor(Lsun/awt/AWTAccessor$ComponentAccessor;)V
    .locals 0

    sput-object p0, Lsun/awt/AWTAccessor;->componentAccessor:Lsun/awt/AWTAccessor$ComponentAccessor;

    return-void
.end method

.method public static setContainerAccessor(Lsun/awt/AWTAccessor$ContainerAccessor;)V
    .locals 0

    sput-object p0, Lsun/awt/AWTAccessor;->containerAccessor:Lsun/awt/AWTAccessor$ContainerAccessor;

    return-void
.end method

.method public static setCursorAccessor(Lsun/awt/AWTAccessor$CursorAccessor;)V
    .locals 0

    sput-object p0, Lsun/awt/AWTAccessor;->cursorAccessor:Lsun/awt/AWTAccessor$CursorAccessor;

    return-void
.end method

.method public static setDefaultKeyboardFocusManagerAccessor(Lsun/awt/AWTAccessor$DefaultKeyboardFocusManagerAccessor;)V
    .locals 0

    sput-object p0, Lsun/awt/AWTAccessor;->defaultKeyboardFocusManagerAccessor:Lsun/awt/AWTAccessor$DefaultKeyboardFocusManagerAccessor;

    return-void
.end method

.method public static setEventQueueAccessor(Lsun/awt/AWTAccessor$EventQueueAccessor;)V
    .locals 0

    sput-object p0, Lsun/awt/AWTAccessor;->eventQueueAccessor:Lsun/awt/AWTAccessor$EventQueueAccessor;

    return-void
.end method

.method public static setFileDialogAccessor(Lsun/awt/AWTAccessor$FileDialogAccessor;)V
    .locals 0

    sput-object p0, Lsun/awt/AWTAccessor;->fileDialogAccessor:Lsun/awt/AWTAccessor$FileDialogAccessor;

    return-void
.end method

.method public static setFrameAccessor(Lsun/awt/AWTAccessor$FrameAccessor;)V
    .locals 0

    sput-object p0, Lsun/awt/AWTAccessor;->frameAccessor:Lsun/awt/AWTAccessor$FrameAccessor;

    return-void
.end method

.method public static setInputEventAccessor(Lsun/awt/AWTAccessor$InputEventAccessor;)V
    .locals 0

    sput-object p0, Lsun/awt/AWTAccessor;->inputEventAccessor:Lsun/awt/AWTAccessor$InputEventAccessor;

    return-void
.end method

.method public static setInvocationEventAccessor(Lsun/awt/AWTAccessor$InvocationEventAccessor;)V
    .locals 0

    sput-object p0, Lsun/awt/AWTAccessor;->invocationEventAccessor:Lsun/awt/AWTAccessor$InvocationEventAccessor;

    return-void
.end method

.method public static setKeyEventAccessor(Lsun/awt/AWTAccessor$KeyEventAccessor;)V
    .locals 0

    sput-object p0, Lsun/awt/AWTAccessor;->keyEventAccessor:Lsun/awt/AWTAccessor$KeyEventAccessor;

    return-void
.end method

.method public static setKeyboardFocusManagerAccessor(Lsun/awt/AWTAccessor$KeyboardFocusManagerAccessor;)V
    .locals 0

    sput-object p0, Lsun/awt/AWTAccessor;->kfmAccessor:Lsun/awt/AWTAccessor$KeyboardFocusManagerAccessor;

    return-void
.end method

.method public static setMenuAccessor(Lsun/awt/AWTAccessor$MenuAccessor;)V
    .locals 0

    sput-object p0, Lsun/awt/AWTAccessor;->menuAccessor:Lsun/awt/AWTAccessor$MenuAccessor;

    return-void
.end method

.method public static setMenuBarAccessor(Lsun/awt/AWTAccessor$MenuBarAccessor;)V
    .locals 0

    sput-object p0, Lsun/awt/AWTAccessor;->menuBarAccessor:Lsun/awt/AWTAccessor$MenuBarAccessor;

    return-void
.end method

.method public static setMenuComponentAccessor(Lsun/awt/AWTAccessor$MenuComponentAccessor;)V
    .locals 0

    sput-object p0, Lsun/awt/AWTAccessor;->menuComponentAccessor:Lsun/awt/AWTAccessor$MenuComponentAccessor;

    return-void
.end method

.method public static setMenuItemAccessor(Lsun/awt/AWTAccessor$MenuItemAccessor;)V
    .locals 0

    sput-object p0, Lsun/awt/AWTAccessor;->menuItemAccessor:Lsun/awt/AWTAccessor$MenuItemAccessor;

    return-void
.end method

.method public static setPopupMenuAccessor(Lsun/awt/AWTAccessor$PopupMenuAccessor;)V
    .locals 0

    sput-object p0, Lsun/awt/AWTAccessor;->popupMenuAccessor:Lsun/awt/AWTAccessor$PopupMenuAccessor;

    return-void
.end method

.method public static setScrollPaneAdjustableAccessor(Lsun/awt/AWTAccessor$ScrollPaneAdjustableAccessor;)V
    .locals 0

    sput-object p0, Lsun/awt/AWTAccessor;->scrollPaneAdjustableAccessor:Lsun/awt/AWTAccessor$ScrollPaneAdjustableAccessor;

    return-void
.end method

.method public static setSequencedEventAccessor(Lsun/awt/AWTAccessor$SequencedEventAccessor;)V
    .locals 0

    sput-object p0, Lsun/awt/AWTAccessor;->sequencedEventAccessor:Lsun/awt/AWTAccessor$SequencedEventAccessor;

    return-void
.end method

.method public static setSystemColorAccessor(Lsun/awt/AWTAccessor$SystemColorAccessor;)V
    .locals 0

    sput-object p0, Lsun/awt/AWTAccessor;->systemColorAccessor:Lsun/awt/AWTAccessor$SystemColorAccessor;

    return-void
.end method

.method public static setSystemTrayAccessor(Lsun/awt/AWTAccessor$SystemTrayAccessor;)V
    .locals 0

    sput-object p0, Lsun/awt/AWTAccessor;->systemTrayAccessor:Lsun/awt/AWTAccessor$SystemTrayAccessor;

    return-void
.end method

.method public static setToolkitAccessor(Lsun/awt/AWTAccessor$ToolkitAccessor;)V
    .locals 0

    sput-object p0, Lsun/awt/AWTAccessor;->toolkitAccessor:Lsun/awt/AWTAccessor$ToolkitAccessor;

    return-void
.end method

.method public static setTrayIconAccessor(Lsun/awt/AWTAccessor$TrayIconAccessor;)V
    .locals 0

    sput-object p0, Lsun/awt/AWTAccessor;->trayIconAccessor:Lsun/awt/AWTAccessor$TrayIconAccessor;

    return-void
.end method

.method public static setWindowAccessor(Lsun/awt/AWTAccessor$WindowAccessor;)V
    .locals 0

    sput-object p0, Lsun/awt/AWTAccessor;->windowAccessor:Lsun/awt/AWTAccessor$WindowAccessor;

    return-void
.end method
