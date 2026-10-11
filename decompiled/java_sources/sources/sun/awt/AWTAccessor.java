package sun.awt;

import java.util.ResourceBundle;

/* loaded from: classes16.dex */
public final class AWTAccessor {
    private static AccessibleContextAccessor accessibleContextAccessor;
    private static AWTEventAccessor awtEventAccessor;
    private static CheckboxMenuItemAccessor checkboxMenuItemAccessor;
    private static ClientPropertyKeyAccessor clientPropertyKeyAccessor;
    private static ComponentAccessor componentAccessor;
    private static ContainerAccessor containerAccessor;
    private static CursorAccessor cursorAccessor;
    private static DefaultKeyboardFocusManagerAccessor defaultKeyboardFocusManagerAccessor;
    private static EventQueueAccessor eventQueueAccessor;
    private static FileDialogAccessor fileDialogAccessor;
    private static FrameAccessor frameAccessor;
    private static InputEventAccessor inputEventAccessor;
    private static InvocationEventAccessor invocationEventAccessor;
    private static KeyEventAccessor keyEventAccessor;
    private static KeyboardFocusManagerAccessor kfmAccessor;
    private static MenuAccessor menuAccessor;
    private static MenuBarAccessor menuBarAccessor;
    private static MenuComponentAccessor menuComponentAccessor;
    private static MenuItemAccessor menuItemAccessor;
    private static PopupMenuAccessor popupMenuAccessor;
    private static ScrollPaneAdjustableAccessor scrollPaneAdjustableAccessor;
    private static SequencedEventAccessor sequencedEventAccessor;
    private static SystemColorAccessor systemColorAccessor;
    private static SystemTrayAccessor systemTrayAccessor;
    private static ToolkitAccessor toolkitAccessor;
    private static TrayIconAccessor trayIconAccessor;
    private static WindowAccessor windowAccessor;

    /* loaded from: classes16.dex */
    public interface AWTEventAccessor {
    }

    /* loaded from: classes16.dex */
    public interface AccessibleContextAccessor {
    }

    /* loaded from: classes16.dex */
    public interface CheckboxMenuItemAccessor {
    }

    /* loaded from: classes16.dex */
    public interface ClientPropertyKeyAccessor {
        Object getJComponent_TRANSFER_HANDLER();
    }

    /* loaded from: classes16.dex */
    public interface ComponentAccessor {
    }

    /* loaded from: classes16.dex */
    public interface ContainerAccessor {
    }

    /* loaded from: classes16.dex */
    public interface CursorAccessor {
    }

    /* loaded from: classes16.dex */
    public interface DefaultKeyboardFocusManagerAccessor {
    }

    /* loaded from: classes16.dex */
    public interface EventQueueAccessor {
    }

    /* loaded from: classes16.dex */
    public interface FileDialogAccessor {
    }

    /* loaded from: classes16.dex */
    public interface FrameAccessor {
    }

    /* loaded from: classes16.dex */
    public interface InputEventAccessor {
        int[] getButtonDownMasks();
    }

    /* loaded from: classes16.dex */
    public interface InvocationEventAccessor {
    }

    /* loaded from: classes16.dex */
    public interface KeyEventAccessor {
    }

    /* loaded from: classes16.dex */
    public interface KeyboardFocusManagerAccessor {
    }

    /* loaded from: classes16.dex */
    public interface MenuAccessor {
    }

    /* loaded from: classes16.dex */
    public interface MenuBarAccessor {
    }

    /* loaded from: classes16.dex */
    public interface MenuComponentAccessor {
    }

    /* loaded from: classes16.dex */
    public interface MenuItemAccessor {
    }

    /* loaded from: classes16.dex */
    public interface PopupMenuAccessor {
    }

    /* loaded from: classes16.dex */
    public interface ScrollPaneAdjustableAccessor {
    }

    /* loaded from: classes16.dex */
    public interface SequencedEventAccessor {
    }

    /* loaded from: classes16.dex */
    public interface SystemColorAccessor {
        void updateSystemColors();
    }

    /* loaded from: classes16.dex */
    public interface SystemTrayAccessor {
    }

    /* loaded from: classes16.dex */
    public interface ToolkitAccessor {
        void setPlatformResources(ResourceBundle resourceBundle);
    }

    /* loaded from: classes16.dex */
    public interface TrayIconAccessor {
    }

    /* loaded from: classes16.dex */
    public interface WindowAccessor {
    }

    private AWTAccessor() {
    }

    public static AWTEventAccessor getAWTEventAccessor() {
        return awtEventAccessor;
    }

    public static AccessibleContextAccessor getAccessibleContextAccessor() {
        return accessibleContextAccessor;
    }

    public static CheckboxMenuItemAccessor getCheckboxMenuItemAccessor() {
        return checkboxMenuItemAccessor;
    }

    public static ClientPropertyKeyAccessor getClientPropertyKeyAccessor() {
        return clientPropertyKeyAccessor;
    }

    public static ComponentAccessor getComponentAccessor() {
        return componentAccessor;
    }

    public static ContainerAccessor getContainerAccessor() {
        return containerAccessor;
    }

    public static CursorAccessor getCursorAccessor() {
        return cursorAccessor;
    }

    public static DefaultKeyboardFocusManagerAccessor getDefaultKeyboardFocusManagerAccessor() {
        return defaultKeyboardFocusManagerAccessor;
    }

    public static EventQueueAccessor getEventQueueAccessor() {
        return eventQueueAccessor;
    }

    public static FileDialogAccessor getFileDialogAccessor() {
        return fileDialogAccessor;
    }

    public static FrameAccessor getFrameAccessor() {
        return frameAccessor;
    }

    public static InputEventAccessor getInputEventAccessor() {
        return inputEventAccessor;
    }

    public static InvocationEventAccessor getInvocationEventAccessor() {
        return invocationEventAccessor;
    }

    public static KeyEventAccessor getKeyEventAccessor() {
        return keyEventAccessor;
    }

    public static KeyboardFocusManagerAccessor getKeyboardFocusManagerAccessor() {
        return kfmAccessor;
    }

    public static MenuAccessor getMenuAccessor() {
        return menuAccessor;
    }

    public static MenuBarAccessor getMenuBarAccessor() {
        return menuBarAccessor;
    }

    public static MenuComponentAccessor getMenuComponentAccessor() {
        return menuComponentAccessor;
    }

    public static MenuItemAccessor getMenuItemAccessor() {
        return menuItemAccessor;
    }

    public static PopupMenuAccessor getPopupMenuAccessor() {
        return popupMenuAccessor;
    }

    public static ScrollPaneAdjustableAccessor getScrollPaneAdjustableAccessor() {
        return scrollPaneAdjustableAccessor;
    }

    public static SequencedEventAccessor getSequencedEventAccessor() {
        return sequencedEventAccessor;
    }

    public static SystemColorAccessor getSystemColorAccessor() {
        return systemColorAccessor;
    }

    public static SystemTrayAccessor getSystemTrayAccessor() {
        return systemTrayAccessor;
    }

    public static ToolkitAccessor getToolkitAccessor() {
        return toolkitAccessor;
    }

    public static TrayIconAccessor getTrayIconAccessor() {
        return trayIconAccessor;
    }

    public static WindowAccessor getWindowAccessor() {
        return windowAccessor;
    }

    public static void setAWTEventAccessor(AWTEventAccessor aWTEventAccessor) {
        awtEventAccessor = aWTEventAccessor;
    }

    public static void setAccessibleContextAccessor(AccessibleContextAccessor accessibleContextAccessor2) {
        accessibleContextAccessor = accessibleContextAccessor2;
    }

    public static void setCheckboxMenuItemAccessor(CheckboxMenuItemAccessor checkboxMenuItemAccessor2) {
        checkboxMenuItemAccessor = checkboxMenuItemAccessor2;
    }

    public static void setClientPropertyKeyAccessor(ClientPropertyKeyAccessor clientPropertyKeyAccessor2) {
        clientPropertyKeyAccessor = clientPropertyKeyAccessor2;
    }

    public static void setComponentAccessor(ComponentAccessor componentAccessor2) {
        componentAccessor = componentAccessor2;
    }

    public static void setContainerAccessor(ContainerAccessor containerAccessor2) {
        containerAccessor = containerAccessor2;
    }

    public static void setCursorAccessor(CursorAccessor cursorAccessor2) {
        cursorAccessor = cursorAccessor2;
    }

    public static void setDefaultKeyboardFocusManagerAccessor(DefaultKeyboardFocusManagerAccessor defaultKeyboardFocusManagerAccessor2) {
        defaultKeyboardFocusManagerAccessor = defaultKeyboardFocusManagerAccessor2;
    }

    public static void setEventQueueAccessor(EventQueueAccessor eventQueueAccessor2) {
        eventQueueAccessor = eventQueueAccessor2;
    }

    public static void setFileDialogAccessor(FileDialogAccessor fileDialogAccessor2) {
        fileDialogAccessor = fileDialogAccessor2;
    }

    public static void setFrameAccessor(FrameAccessor frameAccessor2) {
        frameAccessor = frameAccessor2;
    }

    public static void setInputEventAccessor(InputEventAccessor inputEventAccessor2) {
        inputEventAccessor = inputEventAccessor2;
    }

    public static void setInvocationEventAccessor(InvocationEventAccessor invocationEventAccessor2) {
        invocationEventAccessor = invocationEventAccessor2;
    }

    public static void setKeyEventAccessor(KeyEventAccessor keyEventAccessor2) {
        keyEventAccessor = keyEventAccessor2;
    }

    public static void setKeyboardFocusManagerAccessor(KeyboardFocusManagerAccessor keyboardFocusManagerAccessor) {
        kfmAccessor = keyboardFocusManagerAccessor;
    }

    public static void setMenuAccessor(MenuAccessor menuAccessor2) {
        menuAccessor = menuAccessor2;
    }

    public static void setMenuBarAccessor(MenuBarAccessor menuBarAccessor2) {
        menuBarAccessor = menuBarAccessor2;
    }

    public static void setMenuComponentAccessor(MenuComponentAccessor menuComponentAccessor2) {
        menuComponentAccessor = menuComponentAccessor2;
    }

    public static void setMenuItemAccessor(MenuItemAccessor menuItemAccessor2) {
        menuItemAccessor = menuItemAccessor2;
    }

    public static void setPopupMenuAccessor(PopupMenuAccessor popupMenuAccessor2) {
        popupMenuAccessor = popupMenuAccessor2;
    }

    public static void setScrollPaneAdjustableAccessor(ScrollPaneAdjustableAccessor scrollPaneAdjustableAccessor2) {
        scrollPaneAdjustableAccessor = scrollPaneAdjustableAccessor2;
    }

    public static void setSequencedEventAccessor(SequencedEventAccessor sequencedEventAccessor2) {
        sequencedEventAccessor = sequencedEventAccessor2;
    }

    public static void setSystemColorAccessor(SystemColorAccessor systemColorAccessor2) {
        systemColorAccessor = systemColorAccessor2;
    }

    public static void setSystemTrayAccessor(SystemTrayAccessor systemTrayAccessor2) {
        systemTrayAccessor = systemTrayAccessor2;
    }

    public static void setToolkitAccessor(ToolkitAccessor toolkitAccessor2) {
        toolkitAccessor = toolkitAccessor2;
    }

    public static void setTrayIconAccessor(TrayIconAccessor trayIconAccessor2) {
        trayIconAccessor = trayIconAccessor2;
    }

    public static void setWindowAccessor(WindowAccessor windowAccessor2) {
        windowAccessor = windowAccessor2;
    }
}
