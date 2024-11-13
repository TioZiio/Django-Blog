from site_setup.models import SiteSetup

def ObjectsSiteSetup(request):
    setup = SiteSetup.objects.order_by('-id').first()
    return {
        'objects_setup': setup
        }
