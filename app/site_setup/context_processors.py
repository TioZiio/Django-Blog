from site_setup.models import SiteSetup

def ObjectsSiteSetup(request):
    setup = SiteSetup.objects.order_by('-id').first()
    return {
        'object_setup': setup
        }
